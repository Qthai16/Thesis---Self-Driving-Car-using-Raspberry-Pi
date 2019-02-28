#include <iostream>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/opencv.hpp>

#include <vector>
#include <math.h>

#include "pi_lane_detect.h"
#include "raspi_uart_send.h"

Mat src;
DetectLane *detect;
PI_UART *uart;
uint8_t u8_Buf[100];
VideoCapture capture(0);

// void video_process(void)
// {
    // if( !capture.isOpened() )
    //     throw "Error when reading steam_avi";
    // while (true)
    // {
    //     capture >> src;
    //     if (src.empty())
    //         break;

    //     cv::imshow("View", src);
    //     detect->update(src);
    //     cv::waitKey(10);
    // }
// }

int main(int argc, char **argv)
{
	// detect = new DetectLane();
    cv::namedWindow("View");
    // cv::namedWindow("Binary");
    cv::namedWindow("Threshold");
    // cv::namedWindow("Bird View");
    cv::namedWindow("Lane Detect");

	if( !capture.isOpened() )
        throw "Error when reading steam_avi";

    detect = new DetectLane();
    uart = new PI_UART();
	sprintf((char*)(u8_Buf), "[%d,%d]\r\n", 256, 256);
    while (true)
    {
        capture >> src;
        if (src.empty())
            break;

        detect->update(src);
        uart->uart_string_send(u8_Buf);
        // cv::imshow("View", src);
        if ( (cv::waitKey(10)&0xFF) == 'q')
        	break;
    }
	cv::destroyAllWindows();
	return 0;
}