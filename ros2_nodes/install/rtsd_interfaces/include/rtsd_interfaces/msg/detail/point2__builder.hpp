// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from rtsd_interfaces:msg/Point2.idl
// generated code does not contain a copyright notice

#ifndef RTSD_INTERFACES__MSG__DETAIL__POINT2__BUILDER_HPP_
#define RTSD_INTERFACES__MSG__DETAIL__POINT2__BUILDER_HPP_

#include "rtsd_interfaces/msg/detail/point2__struct.hpp"
#include <rosidl_runtime_cpp/message_initialization.hpp>
#include <algorithm>
#include <utility>


namespace rtsd_interfaces
{

namespace msg
{

namespace builder
{

class Init_Point2_y
{
public:
  explicit Init_Point2_y(::rtsd_interfaces::msg::Point2 & msg)
  : msg_(msg)
  {}
  ::rtsd_interfaces::msg::Point2 y(::rtsd_interfaces::msg::Point2::_y_type arg)
  {
    msg_.y = std::move(arg);
    return std::move(msg_);
  }

private:
  ::rtsd_interfaces::msg::Point2 msg_;
};

class Init_Point2_x
{
public:
  Init_Point2_x()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_Point2_y x(::rtsd_interfaces::msg::Point2::_x_type arg)
  {
    msg_.x = std::move(arg);
    return Init_Point2_y(msg_);
  }

private:
  ::rtsd_interfaces::msg::Point2 msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::rtsd_interfaces::msg::Point2>()
{
  return rtsd_interfaces::msg::builder::Init_Point2_x();
}

}  // namespace rtsd_interfaces

#endif  // RTSD_INTERFACES__MSG__DETAIL__POINT2__BUILDER_HPP_
