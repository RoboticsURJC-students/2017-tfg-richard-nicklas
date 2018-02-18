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

vector<KeyPoint> kptsImg1;
vector<KeyPoint> kptsImg2;

int fastThreshold = 128;

// Esto no funciona pero compila...
int extractKeypoints(vector< cv::KeyPoint >& kpts, int kptDetectorThreshold, Mat img)
{

    imshow("extrayendo Keypoints de )", img);
    waitKey(2000);



  // Use FAST corner detector to detect the image keypoints
  //https://docs.opencv.org/3.0-beta/modules/features2d/doc/feature_detection_and_description.html
  cv::FAST(img, kpts, kptDetectorThreshold, true);


  return kpts.size();
}

//https://docs.opencv.org/3.1.0/d5/d51/group__features2d__main.html
// Detect keypoints of img with FAST and store them to kpts given the threshold kptDetectorThreshold.
int extractKeypoints2(vector< cv::KeyPoint >& kpts, int kptDetectorThreshold, Mat img)
{

    imshow("extrayendo Keypoints de )", img);
    waitKey(2000);


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
          imshow("111111111111111111", frame);

          //imshow debe ir seguido de waitKey, que mostrara la imagen durante N ms, en este caso 10 . waitkey(0) mostrara indefinidamente hasta que se presione alguna key
          // stop capturing by pressing ESC 
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
          imshow("22222222222222222)", frame);

          //imshow debe ir seguido de waitKey, que mostrara la imagen durante N ms, en este caso 10 . waitkey(0) mostrara indefinidamente hasta que se presione alguna key
          // stop capturing by pressing ESC 
          if( waitKey(10) == 13 ){
            image2 = frame;
            break;
          }
    }

    int i = extractKeypoints2(kptsImg1,fastThreshold,image1);
    fprintf(stdout,"Numero de keypoints %d \n",i);



    // the camera will be closed automatically upon exit
    // cap.close();
    return 0;
}
