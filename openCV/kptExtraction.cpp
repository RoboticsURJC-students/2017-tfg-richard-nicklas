#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <cv.h>
#include <opencv2/videoio/videoio_c.h>
#include <opencv2/features2d.hpp>
#include <opencv2/xfeatures2d.hpp>

#include <iostream>
#include <stdio.h>

using namespace std;
using namespace cv;




Mat image1;
Mat image2;
Mat sideBySideImg;


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


void showKeypoints(Mat* img, const vector<cv::KeyPoint>& kpts)
{
  for (unsigned int i = 0; i < kpts.size(); ++i)
    markKpt(img, kpts[i].pt.x, kpts[i].pt.y);
}


//https://docs.opencv.org/3.1.0/d5/d51/group__features2d__main.html
// Detect keypoints of img with FAST and store them to kpts given the threshold kptDetectorThreshold.
int extractKeypoints(vector< cv::KeyPoint >& kpts, int kptDetectorThreshold, Mat img)
{

    cv::Ptr<cv::FastFeatureDetector> detector = cv::FastFeatureDetector::create();
    detector->detect(img, kpts);

  return kpts.size();
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

          //WindowName, mat
          imshow("First Image", frame);

          //imshow debe ir seguido de waitKey, que mostrara la imagen durante N ms, en este caso 10 . waitkey(0) mostrara indefinidamente hasta que se presione alguna key
          // stop capturing by pressing enter
          if( waitKey(10) == 13 ){
            image1 = frame;
            break;
          }
    }

    fprintf(stdout, "Move the camera around and take a different angle of the same shot \n");

    for(;;)
    {
          Mat frame;
          cap >> frame;
          if( frame.empty() ) break; // end of video stream

          //WindowName, mat
          imshow("Second Image", frame);

          //imshow debe ir seguido de waitKey, que mostrara la imagen durante N ms, en este caso 10 . waitkey(0) mostrara indefinidamente hasta que se presione alguna key
          // stop capturing by pressing Enter
          if( waitKey(10) == 13 ){
            image2 = frame;
            break;
          }
    }

    int i = extractKeypoints(kptsImg1,fastThreshold,image1);
    fprintf(stdout,"Numero de keypoints de img1 %d \n",i);

    int i2 = extractKeypoints(kptsImg2,fastThreshold,image2);
    fprintf(stdout,"Numero de keypoints de img2 %d \n",i2);


    showKeypoints(&image1,kptsImg1);
    showKeypoints(&image2,kptsImg2);

    sideBySideImg = setImagesSideBySide( image1, image2);

    imshow("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", sideBySideImg);
    waitKey(10000);

    // the camera will be closed automatically upon exit
    // cap.close();
    return 0;
}

