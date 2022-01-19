#include <chrono>
#include <functional>
#include <memory>
#include <string>
#include <vector>

#include "rclcpp/rclcpp.hpp"
#include "rtsd_interfaces/msg/point2.hpp"

using namespace std::chrono_literals;

/* This example creates a subclass of Node and uses std::bind() to register a
* member function as a callback from the timer. */

class SetpointSimulator : public rclcpp::Node
{
  public:
    SetpointSimulator()
    : Node("setpoint_simulator")
    {
      setpoint_publisher_ = this->create_publisher<rtsd_interfaces::msg::Point2>("setpoint", 10);
      timer_ = this->create_wall_timer(
      3000ms, std::bind(&SetpointSimulator::timer_callback, this));
    }

  private:
    void timer_callback()
    {
      float x = 1.6 * (((float) rand()) / (float) RAND_MAX) - 0.8;
      float y = 1.2 * (((float) rand()) / (float) RAND_MAX) - 0.6;
      auto setpoint = rtsd_interfaces::msg::Point2();
      setpoint.x = x;
      setpoint.y = y;
      setpoint_publisher_->publish(setpoint);
    }

    rclcpp::TimerBase::SharedPtr timer_;
    rclcpp::Publisher<rtsd_interfaces::msg::Point2>::SharedPtr setpoint_publisher_;
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<SetpointSimulator>());
  rclcpp::shutdown();
  return 0;
}