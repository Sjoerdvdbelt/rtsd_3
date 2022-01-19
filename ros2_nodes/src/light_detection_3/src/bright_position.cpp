#include <iostream>
#include <sstream>
#include <string>
#include <vector>

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "rclcpp/rclcpp.hpp"
#include "rtsd_interfaces/msg/point2.hpp"
#include "sensor_msgs/msg/image.hpp"
using std::placeholders::_1;

class BrightPosition : public rclcpp::Node
{
  public:
    BrightPosition()
    : Node("bright_position")
    {
      publisher_ = this->create_publisher<rtsd_interfaces::msg::Point2>("setpoint", 1);
      subscription_ = this->create_subscription<sensor_msgs::msg::Image>(
      "webcam_input", 1, std::bind(&BrightPosition::image_callback, this, _1));
      pos_subscription_ = this->create_subscription<rtsd_interfaces::msg::Point2>(
      "position", 1, std::bind(&BrightPosition::position_callback, this, _1));
    }

  private:
  // taken from demos/image_tools/showimage.cpp
  int encoding2mat_type(const std::string & encoding) const
    {
      if (encoding == "mono8") {
        return CV_8UC1;
      } else if (encoding == "bgr8") {
        return CV_8UC3;
      } else if (encoding == "mono16") {
        return CV_16SC1;
      } else if (encoding == "rgba8") {
        return CV_8UC4;
      } else if (encoding == "bgra8") {
        return CV_8UC4;
      } else if (encoding == "32FC1") {
        return CV_32FC1;
      } else if (encoding == "rgb8") {
        return CV_8UC3;
      } else {
        throw std::runtime_error("Unsupported encoding type");
      }
    }

    void image_callback(const sensor_msgs::msg::Image::SharedPtr msg)
    {
      // convert to opencv format, taken from demos/image_tools/showimage.cpp   
      cv::Mat frame(
        msg->height, msg->width, BrightPosition::encoding2mat_type(msg->encoding),
        const_cast<unsigned char *>(msg->data.data()), msg->step);

      // process and threshold image for binary image
      cv::Mat greyMat;
      makeBinary(frame, greyMat);
      
      // Find contour with greatest area
      std::vector<cv::Point> contour;
      largestContour(greyMat, contour);

      if(!contour.empty()) {
        // calculate moments of contour, and compute COG
        cv::Moments m = cv::moments(contour,true);
        float x_light = m.m10/m.m00;
        float y_light = m.m01/m.m00;

        // add red dot to highlight COG
        cv::cvtColor(greyMat, greyMat, cv::COLOR_GRAY2BGR);
        cv::Point center = cv::Point(x_light, y_light);
        circle(greyMat, center, 3, cv::Scalar(0, 0, 255), -1);

        // calculate X dot and add to current position
        rtsd_interfaces::msg::Point2 setpoint;
        float width_rad = 0.8;  // added robustness for width/height values of jiwy camera
        float height_rad = 0.6;
        x_light = ((x_light/msg->width)*width_rad)-(0.5*width_rad); // assuming scaling factor 1/2 for jiwy cam
        y_light = -(((y_light/msg->height)*height_rad)-(0.5*height_rad));

        x_set_ = x_light + x_jiwy_;
        y_set_ = y_light + y_jiwy_;

        // publish setpoint
        setpoint.x = x_set_;
        setpoint.y = y_set_;
        publisher_->publish(setpoint);
      } else {
        RCLCPP_INFO(this->get_logger(), "No bright spot detected");
        
      }
      
      // Show the image in a window
      cv::imshow("bright_position", greyMat);
      // Draw the screen and wait for 1 millisecond.
      cv::waitKey(1);

    }

    void position_callback(const rtsd_interfaces::msg::Point2::SharedPtr msg)
    {
      x_jiwy_ = msg->x;
      y_jiwy_ = msg->y;
    }

    void makeBinary(cv::Mat& frame, cv::Mat& binMat) {
      // Get average value from HSV as reference
      cv::Mat hsv;
      cv::cvtColor(frame, hsv, cv::COLOR_BGR2HSV);
      const auto averages_hsv = cv::mean(hsv);
      const auto brightness = averages_hsv[2];

      // BW imagen for thresholding and filter to reduce noise
      cv::cvtColor(frame, binMat, cv::COLOR_BGR2GRAY);
      cv::GaussianBlur(binMat, binMat,cv::Size(5,5),0);

      cv::threshold(binMat,binMat, std::min(0.5*brightness+150, 250.0), 255, cv::THRESH_BINARY); // Previous version +200, jiwy camera is less sensitive
    }

    void largestContour(cv::Mat& frame, std::vector<cv::Point>& contour) {
      std::vector<std::vector<cv::Point> > contours;
      std::vector<cv::Vec4i> hierarchy;

      // Find all contours and filter to greatest area contour
      cv::findContours(frame, contours, hierarchy, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE, cv::Point(0, 0) );
      double largest_area = 0.0; 
      double new_area;
      for (uint i = 0; i<contours.size(); i++) {
        new_area = cv::contourArea(contours[i]);
        if (new_area > largest_area) {
          largest_area = new_area;
          contour = contours[i];
        }
      }
    }

    rclcpp::Subscription<sensor_msgs::msg::Image>::SharedPtr subscription_;
    rclcpp::Subscription<rtsd_interfaces::msg::Point2>::SharedPtr pos_subscription_;
    rclcpp::Publisher<rtsd_interfaces::msg::Point2>::SharedPtr publisher_;
    float x_jiwy_ = 0;
    float y_jiwy_ = 0;
    float x_set_ = 0;
    float y_set_ = 0;
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<BrightPosition>());
  rclcpp::shutdown();
  return 0;
}
