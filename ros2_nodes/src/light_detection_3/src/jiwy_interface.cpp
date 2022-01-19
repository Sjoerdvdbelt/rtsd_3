#include <iostream>
#include <sstream>
#include <string>
#include <vector>

#include "rclcpp/rclcpp.hpp"
#include "rtsd_interfaces/msg/point2.hpp"
using std::placeholders::_1;

class JiwyInterface : public rclcpp::Node
{
  public:
    JiwyInterface()
    : Node("jiwy_interface")
    {
        position_publisher_ = this->create_publisher<rtsd_interfaces::msg::Point2>("position", 1);
        motor_subscription_ = this->create_subscription<rtsd_interfaces::msg::Point2>(
        "motor_values", 1, std::bind(&PositionController::motor_callback, this, _1));
        fpga_timer_ = this->create_wall_timer(
        1ms, std::bind(&JiwyInterface::read_write_fpga, this));

        icoComm.SetReadConvertFcn(&MyReadConvert);
        icoComm.SetWriteConvertFcn(&MyWriteConvert);
    }

  private:

    void MyReadConvert(const double* src, double *dst)
    {

    }

    void MyWriteConvert(const double* src, double *dst)
    {

    }

    void motor_callback(const rtsd_interfaces::msg::Point2::SharedPtr msg)
    {
        motor_x_ = msg.x;
        motor_y_ = msg.y;
    }

    void read_write_fpga()
    {
        // write motor values, publish position values
    }

    float motor_x_ = 0;
    float motor_y_ = 0;
    rclcpp::TimerBase::SharedPtr fpga_timer_;
    rclcpp::Publisher<rtsd_interfaces::msg::Point2>::SharedPtr position_publisher_;
    rclcpp::Subscription<rtsd_interfaces::msg::Point2>::SharedPtr motor_subscription_;

    // x axis -> P2
    // y axis -> P1
    // [ P1_PWM, P1_OUT_1, P2_PWM, P2_OUT_1,
    //  P3_PWM, P3_OUT_1, P4_PWM, P4_OUT_1 ]
    int _sendParameters[] = {0, -1, 1, -1, -1, -1, -1, -1}
    // [ P1_ENC, P1_IN_1, P1_IN2, P2_ENC, P2_IN_1, P2_IN2,
    //  P3_ENC, P3_IN_1, P3_IN2, P4_ENC, P4_IN_1, P4_IN2]
    int _receiveParameters[] = {0, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1}
    IcoComm icoComm = new IcoComm(_sendParameters, _receiveParameters);

};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<JiwyInterface>());
  rclcpp::shutdown();
  return 0;
}
