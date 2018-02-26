#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <cv.h>
#include <opencv2/videoio/videoio_c.h>
#include <opencv2/features2d.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <chrono>

#include <iostream>
#include <stdio.h>

using namespace std;
using namespace cv;
using namespace std::chrono;




Mat image1;
Mat image2;
Mat sideBySideImg;

Mat img1Descriptors;
Mat img2Descriptors;

vector<KeyPoint> kptsImg1;
vector<KeyPoint> kptsImg2;

int fastThreshold = 128;




// Puts input images side by side and stores into res
Mat setImagesSideBySide(const Mat img1, const Mat img2)
{

  Size imageSize = img1.size();

  Mat res(imageSize.height,imageSize.width*2,CV_8UC3);

  Mat leftSide(res,Rect(0,0,imageSize.width,imageSize.height));
  img1.copyTo(leftSide);
  Mat rightSide(res,Rect(imageSize.width,0,imageSize.width,imageSize.height));
  img2.copyTo(rightSide);

  return res;
}



// Draws a plus sign on img given a point
void markKpt(Mat* img, const int x, const int y)
{
  line(*img, Point(x - 5, y), Point(x + 5, y), CV_RGB(255, 0, 0));
  line(*img, Point(x, y - 5), Point(x, y + 5), CV_RGB(255, 0, 0));
}


void showKeypoints(Mat* img, const vector<KeyPoint>& kpts)
{
  for (unsigned int i = 0; i < kpts.size(); ++i)
    markKpt(img, kpts[i].pt.x, kpts[i].pt.y);
}


//https://docs.opencv.org/3.1.0/d5/d51/group__features2d__main.html
// Detect keypoints of img with FAST and store them to kpts given the threshold kptDetectorThreshold.
//
int extractFASTKeypoints(vector< KeyPoint >& kpts, int kptDetectorThreshold, Mat img)
{

    Ptr<FastFeatureDetector> detector = FastFeatureDetector::create();
    detector->detect(img, kpts);

  return kpts.size();
}

int extractORBKeypoints(vector< KeyPoint >& kpts, Mat img)
{

    Ptr<FeatureDetector> detector = ORB::create();
    detector->detect(img, kpts);

  return kpts.size();
}

//Oriented FAST and Rotated BRIEF
void extractORBDescriptors(vector< KeyPoint > kpts, Mat img, Mat& desc)
{

    Ptr<DescriptorExtractor> ext = ORB::create();
    ext->compute(img, kpts, desc );

// Flann needs the descriptors to be of type CV_32F
    desc.convertTo(desc,CV_32F);
}


int main( int argc, const char** argv )
{
    VideoCapture cap;


    // open the default camera, use something different from 0 otherwise;
    // Check VideoCapture documentation.
    if(!cap.open(0))
        return 0;

    fprintf(stdout, "Press Enter to take a shot\n");
    for(;;)
    {
      Mat frame;
      cap >> frame;
      if( frame.empty() ) break; // end of video stream

      imshow("First Image", frame);

      if( waitKey(10) == 13 ){
        image1 = frame;
        break;
      }
    }


    int i = extractORBKeypoints(kptsImg1,image1);
    extractORBDescriptors(kptsImg1,image1,img1Descriptors);
    fprintf(stdout,"Number of Keypoints [img1] %d \n",i);

    for(;;)
    {

      Mat frame;
      cap >> frame;
      if( frame.empty() ) break;

      image2 = frame;


      extractORBKeypoints(kptsImg2,image2);
      extractORBDescriptors(kptsImg2,image2,img2Descriptors);


      FlannBasedMatcher matcher;
      vector<DMatch> matches;

      auto start = high_resolution_clock::now();

      matcher.match( img1Descriptors , img2Descriptors, matches );

      auto elapsed = high_resolution_clock::now() - start;
      long long micros = duration_cast<std::chrono::microseconds>(elapsed).count();
    
      fprintf(stdout,"FLANN Matching takes %lld uS\n",micros);



      double max_dist = 0; double min_dist = 100;
      //-- Keypoint Distance
      for( int i = 0; i < img1Descriptors.rows; i++ )
      { double dist = matches[i].distance;
        if( dist < min_dist ) min_dist = dist;
        if( dist > max_dist ) max_dist = dist;
      }


      // Draw only matches whose distance is less than 2*min_dist
      std::vector< DMatch > good_matches;
      for( int i = 0; i < img1Descriptors.rows; i++ )
      { if( matches[i].distance <= max(2*min_dist, 0.02) )
        { good_matches.push_back( matches[i]); }
      }


///////////////////////////////////////////////////////////////////


      Mat img_matches;
      drawMatches( image1, kptsImg1, image2, kptsImg2,
                   good_matches, img_matches, Scalar::all(-1), Scalar::all(-1),
                 vector<char>(), DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );

      //-- Show detected matches
      imshow( "Matches", img_matches );

      // stop capturing by pressing Enter
      if( waitKey(10) == 13 ){
        break;
      }
        
  } 


    return 0;
}

