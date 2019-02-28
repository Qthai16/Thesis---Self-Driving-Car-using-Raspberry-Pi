#ifndef PI_LANE_DETECT_H
#define PI_LANE_DETECT_H

#include <iostream>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/opencv.hpp>

#include <vector>
#include <math.h>
#include <algorithm>

using namespace std;
using namespace cv;

class DetectLane
{
public:
    DetectLane();
    ~DetectLane();

    void update(const Mat &src);
    
    vector<Point> getLeftLane();
    vector<Point> getRightLane();

    static int slideThickness;

    static int BIRDVIEW_WIDTH;
    static int BIRDVIEW_HEIGHT;

    static int VERTICAL;
    static int HORIZONTAL;

    static Point null;
    static int LEFT_LANE;
    static int RIGHT_LANE;

    static double variance ;

private:
    Mat preProcess( const Mat &src, Point& mass_road );

    Mat birdViewTranform( const Mat &source, Point& mass_road );
    void fillLane( Mat &src );
    Mat sobelfilter(const Mat &src_rgb);
    Point MassOfRoad(const Mat &src_rgb);
    
    void detectLeftRight( const vector< vector<Point> > &points, Point& mass_road );
    vector<Mat> splitLayer( const Mat &src, int dir = VERTICAL );
    vector< vector<Point> > centerRoadSide( const vector<Mat> &src, int dir = VERTICAL );
    int recognize_left_right(vector<Point> &lanex, Point &mass_road, double& var);

    bool point_in_rect( Rect rect_win, Point p);
    Point detectMassRoad( vector< vector<Point> >& contours );

//** sobelfilter function
    float alpha_addweight_sobfunc = 0.2;
    float beta_addweight_sobfunc = 0.8;
    int bin_threshold_sobfunc = 80;
//** Unity cot den **//
    // int minHSV[3] = {0, 0, 180};
    // int maxHSV[3] = {179, 30, 255};
//** Unity Soi da **//
    int minHSV[3] = {44, 0, 180};
    int maxHSV[3] = {179, 30, 255};

//** massofroad function
    Scalar minHSV_massofroad = Scalar(0, 1, 101);
    Scalar maxHSV_massofroad = Scalar(255, 255, 255);

    int skyLine = 85;

    vector<Point> leftLane, rightLane;
};

#endif
