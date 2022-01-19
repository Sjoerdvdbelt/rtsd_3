// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from rtsd_interfaces:msg/Point2.idl
// generated code does not contain a copyright notice

#ifndef RTSD_INTERFACES__MSG__DETAIL__POINT2__TRAITS_HPP_
#define RTSD_INTERFACES__MSG__DETAIL__POINT2__TRAITS_HPP_

#include "rtsd_interfaces/msg/detail/point2__struct.hpp"
#include <stdint.h>
#include <rosidl_runtime_cpp/traits.hpp>
#include <sstream>
#include <string>
#include <type_traits>

namespace rosidl_generator_traits
{

inline void to_yaml(
  const rtsd_interfaces::msg::Point2 & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: x
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "x: ";
    value_to_yaml(msg.x, out);
    out << "\n";
  }

  // member: y
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "y: ";
    value_to_yaml(msg.y, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const rtsd_interfaces::msg::Point2 & msg)
{
  std::ostringstream out;
  to_yaml(msg, out);
  return out.str();
}

template<>
inline const char * data_type<rtsd_interfaces::msg::Point2>()
{
  return "rtsd_interfaces::msg::Point2";
}

template<>
inline const char * name<rtsd_interfaces::msg::Point2>()
{
  return "rtsd_interfaces/msg/Point2";
}

template<>
struct has_fixed_size<rtsd_interfaces::msg::Point2>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<rtsd_interfaces::msg::Point2>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<rtsd_interfaces::msg::Point2>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // RTSD_INTERFACES__MSG__DETAIL__POINT2__TRAITS_HPP_
