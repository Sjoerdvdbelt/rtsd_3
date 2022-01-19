// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from rtsd_interfaces:msg/Point2.idl
// generated code does not contain a copyright notice

#ifndef RTSD_INTERFACES__MSG__DETAIL__POINT2__STRUCT_H_
#define RTSD_INTERFACES__MSG__DETAIL__POINT2__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Struct defined in msg/Point2 in the package rtsd_interfaces.
typedef struct rtsd_interfaces__msg__Point2
{
  double x;
  double y;
} rtsd_interfaces__msg__Point2;

// Struct for a sequence of rtsd_interfaces__msg__Point2.
typedef struct rtsd_interfaces__msg__Point2__Sequence
{
  rtsd_interfaces__msg__Point2 * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} rtsd_interfaces__msg__Point2__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // RTSD_INTERFACES__MSG__DETAIL__POINT2__STRUCT_H_
