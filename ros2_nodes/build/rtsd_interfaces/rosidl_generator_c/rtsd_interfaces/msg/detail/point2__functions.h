// generated from rosidl_generator_c/resource/idl__functions.h.em
// with input from rtsd_interfaces:msg/Point2.idl
// generated code does not contain a copyright notice

#ifndef RTSD_INTERFACES__MSG__DETAIL__POINT2__FUNCTIONS_H_
#define RTSD_INTERFACES__MSG__DETAIL__POINT2__FUNCTIONS_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stdlib.h>

#include "rosidl_runtime_c/visibility_control.h"
#include "rtsd_interfaces/msg/rosidl_generator_c__visibility_control.h"

#include "rtsd_interfaces/msg/detail/point2__struct.h"

/// Initialize msg/Point2 message.
/**
 * If the init function is called twice for the same message without
 * calling fini inbetween previously allocated memory will be leaked.
 * \param[in,out] msg The previously allocated message pointer.
 * Fields without a default value will not be initialized by this function.
 * You might want to call memset(msg, 0, sizeof(
 * rtsd_interfaces__msg__Point2
 * )) before or use
 * rtsd_interfaces__msg__Point2__create()
 * to allocate and initialize the message.
 * \return true if initialization was successful, otherwise false
 */
ROSIDL_GENERATOR_C_PUBLIC_rtsd_interfaces
bool
rtsd_interfaces__msg__Point2__init(rtsd_interfaces__msg__Point2 * msg);

/// Finalize msg/Point2 message.
/**
 * \param[in,out] msg The allocated message pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_rtsd_interfaces
void
rtsd_interfaces__msg__Point2__fini(rtsd_interfaces__msg__Point2 * msg);

/// Create msg/Point2 message.
/**
 * It allocates the memory for the message, sets the memory to zero, and
 * calls
 * rtsd_interfaces__msg__Point2__init().
 * \return The pointer to the initialized message if successful,
 * otherwise NULL
 */
ROSIDL_GENERATOR_C_PUBLIC_rtsd_interfaces
rtsd_interfaces__msg__Point2 *
rtsd_interfaces__msg__Point2__create();

/// Destroy msg/Point2 message.
/**
 * It calls
 * rtsd_interfaces__msg__Point2__fini()
 * and frees the memory of the message.
 * \param[in,out] msg The allocated message pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_rtsd_interfaces
void
rtsd_interfaces__msg__Point2__destroy(rtsd_interfaces__msg__Point2 * msg);


/// Initialize array of msg/Point2 messages.
/**
 * It allocates the memory for the number of elements and calls
 * rtsd_interfaces__msg__Point2__init()
 * for each element of the array.
 * \param[in,out] array The allocated array pointer.
 * \param[in] size The size / capacity of the array.
 * \return true if initialization was successful, otherwise false
 * If the array pointer is valid and the size is zero it is guaranteed
 # to return true.
 */
ROSIDL_GENERATOR_C_PUBLIC_rtsd_interfaces
bool
rtsd_interfaces__msg__Point2__Sequence__init(rtsd_interfaces__msg__Point2__Sequence * array, size_t size);

/// Finalize array of msg/Point2 messages.
/**
 * It calls
 * rtsd_interfaces__msg__Point2__fini()
 * for each element of the array and frees the memory for the number of
 * elements.
 * \param[in,out] array The initialized array pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_rtsd_interfaces
void
rtsd_interfaces__msg__Point2__Sequence__fini(rtsd_interfaces__msg__Point2__Sequence * array);

/// Create array of msg/Point2 messages.
/**
 * It allocates the memory for the array and calls
 * rtsd_interfaces__msg__Point2__Sequence__init().
 * \param[in] size The size / capacity of the array.
 * \return The pointer to the initialized array if successful, otherwise NULL
 */
ROSIDL_GENERATOR_C_PUBLIC_rtsd_interfaces
rtsd_interfaces__msg__Point2__Sequence *
rtsd_interfaces__msg__Point2__Sequence__create(size_t size);

/// Destroy array of msg/Point2 messages.
/**
 * It calls
 * rtsd_interfaces__msg__Point2__Sequence__fini()
 * on the array,
 * and frees the memory of the array.
 * \param[in,out] array The initialized array pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_rtsd_interfaces
void
rtsd_interfaces__msg__Point2__Sequence__destroy(rtsd_interfaces__msg__Point2__Sequence * array);

#ifdef __cplusplus
}
#endif

#endif  // RTSD_INTERFACES__MSG__DETAIL__POINT2__FUNCTIONS_H_
