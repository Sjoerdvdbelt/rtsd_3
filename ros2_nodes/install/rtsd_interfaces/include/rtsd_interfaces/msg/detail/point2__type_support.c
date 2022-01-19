// generated from rosidl_typesupport_introspection_c/resource/idl__type_support.c.em
// with input from rtsd_interfaces:msg/Point2.idl
// generated code does not contain a copyright notice

#include <stddef.h>
#include "rtsd_interfaces/msg/detail/point2__rosidl_typesupport_introspection_c.h"
#include "rtsd_interfaces/msg/rosidl_typesupport_introspection_c__visibility_control.h"
#include "rosidl_typesupport_introspection_c/field_types.h"
#include "rosidl_typesupport_introspection_c/identifier.h"
#include "rosidl_typesupport_introspection_c/message_introspection.h"
#include "rtsd_interfaces/msg/detail/point2__functions.h"
#include "rtsd_interfaces/msg/detail/point2__struct.h"


#ifdef __cplusplus
extern "C"
{
#endif

void Point2__rosidl_typesupport_introspection_c__Point2_init_function(
  void * message_memory, enum rosidl_runtime_c__message_initialization _init)
{
  // TODO(karsten1987): initializers are not yet implemented for typesupport c
  // see https://github.com/ros2/ros2/issues/397
  (void) _init;
  rtsd_interfaces__msg__Point2__init(message_memory);
}

void Point2__rosidl_typesupport_introspection_c__Point2_fini_function(void * message_memory)
{
  rtsd_interfaces__msg__Point2__fini(message_memory);
}

static rosidl_typesupport_introspection_c__MessageMember Point2__rosidl_typesupport_introspection_c__Point2_message_member_array[2] = {
  {
    "x",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_DOUBLE,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(rtsd_interfaces__msg__Point2, x),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "y",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_DOUBLE,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(rtsd_interfaces__msg__Point2, y),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  }
};

static const rosidl_typesupport_introspection_c__MessageMembers Point2__rosidl_typesupport_introspection_c__Point2_message_members = {
  "rtsd_interfaces__msg",  // message namespace
  "Point2",  // message name
  2,  // number of fields
  sizeof(rtsd_interfaces__msg__Point2),
  Point2__rosidl_typesupport_introspection_c__Point2_message_member_array,  // message members
  Point2__rosidl_typesupport_introspection_c__Point2_init_function,  // function to initialize message memory (memory has to be allocated)
  Point2__rosidl_typesupport_introspection_c__Point2_fini_function  // function to terminate message instance (will not free memory)
};

// this is not const since it must be initialized on first access
// since C does not allow non-integral compile-time constants
static rosidl_message_type_support_t Point2__rosidl_typesupport_introspection_c__Point2_message_type_support_handle = {
  0,
  &Point2__rosidl_typesupport_introspection_c__Point2_message_members,
  get_message_typesupport_handle_function,
};

ROSIDL_TYPESUPPORT_INTROSPECTION_C_EXPORT_rtsd_interfaces
const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_c, rtsd_interfaces, msg, Point2)() {
  if (!Point2__rosidl_typesupport_introspection_c__Point2_message_type_support_handle.typesupport_identifier) {
    Point2__rosidl_typesupport_introspection_c__Point2_message_type_support_handle.typesupport_identifier =
      rosidl_typesupport_introspection_c__identifier;
  }
  return &Point2__rosidl_typesupport_introspection_c__Point2_message_type_support_handle;
}
#ifdef __cplusplus
}
#endif
