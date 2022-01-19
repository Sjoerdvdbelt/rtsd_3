#include <iostream>
#include <sstream>
#include <string>
#include <vector>

#include "rclcpp/rclcpp.hpp"
#include "rtsd_interfaces/msg/point2.hpp"
using std::placeholders::_1;

class PositionController : public rclcpp::Node
{
  public:
    PositionController()
    : Node("position_controller")
    {
      motor_publisher_ = this->create_publisher<rtsd_interfaces::msg::Point2>("motor_values", 1);
      setpoin_subscription_ = this->create_subscription<rtsd_interfaces::msg::Point2>(
      "setpoint", 1, std::bind(&PositionController::setpoint_callback, this, _1));
      position_subscription_ = this->create_subscription<rtsd_interfaces::msg::Point2>(
      "position", 1, std::bind(&PositionController::position_callback, this, _1));
      controll_timer_ = this->create_wall_timer(
      1ms, std::bind(&PositionController::controll_loop_callback, this));
    }

  private:
    
    void controll_loop_callback()
    {
        // implement PID controller using set and pos values
        rtsd_interfaces::msg::Point2 motor_values;
        motor_values.x = 0;
        motor_values.y = 0;
        motor_publisher_->publish(motor_values);
    }

    void setpoint_callback(const rtsd_interfaces::msg::Point2::SharedPtr msg)
    {
      x_set_ = msg->x;
      y_set_ = msg->y;
    }
    
    void setpoint_callback(const rtsd_interfaces::msg::Point2::SharedPtr msg)
    {
      x_pos_ = msg->x;
      y_pos_ = msg->y;
    }

    rclcpp::TimerBase::SharedPtr controll_timer_;
    rclcpp::Publisher<rtsd_interfaces::msg::Point2>::SharedPtr motor_publisher_;
    rclcpp::Subscription<rtsd_interfaces::msg::Point2>::SharedPtr setpoint_subscription_;
    rclcpp::Subscription<rtsd_interfaces::msg::Point2>::SharedPtr position_subscription_;
    float x_pos_ = 0;
    float y_pos_ = 0;
    float x_set_ = 0;
    float y_set_ = 0;
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<PositionController>());
  rclcpp::shutdown();
  return 0;
}
