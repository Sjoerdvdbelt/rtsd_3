#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <chrono>

#include "rclcpp/rclcpp.hpp"
#include "rtsd_interfaces/msg/point2.hpp"
using std::placeholders::_1;
using namespace std::chrono_literals;

class MotorTest : public rclcpp::Node
{
  public:
    MotorTest()
    : Node("motor_test")
    {
      publisher_ = this->create_publisher<rtsd_interfaces::msg::Point2>("setpoint", 1);
      pos_subscription_ = this->create_subscription<rtsd_interfaces::msg::Point2>(
      "position", 1, std::bind(&MotorTest::position_callback, this, _1));
      timer_ = this->create_wall_timer(
      2000ms, std::bind(&MotorTest::timer_callback, this));
    }

  private:
    void timer_callback()
    {
      rtsd_interfaces::msg::Point2 setpoint;
      if(_x>=6.0) {
          _x = 0;
      }
      if(_y>=2.5) {
          _y = 0;
      }
      _x = _x + 0.1;
      _y = _y + 0.1;
      setpoint.x = _x - 3;
      setpoint.y = _y - 1;
      publisher_->publish(setpoint);
    }

    void position_callback(const rtsd_interfaces::msg::Point2::SharedPtr msg)
    {
        
    }

    float _x = 0; // -3 to 3
    float _y = 0; // -1 to 1.5
    
    rclcpp::TimerBase::SharedPtr timer_;
    rclcpp::Subscription<rtsd_interfaces::msg::Point2>::SharedPtr pos_subscription_;
    rclcpp::Publisher<rtsd_interfaces::msg::Point2>::SharedPtr publisher_;
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<MotorTest>());
  rclcpp::shutdown();
  return 0;
}
