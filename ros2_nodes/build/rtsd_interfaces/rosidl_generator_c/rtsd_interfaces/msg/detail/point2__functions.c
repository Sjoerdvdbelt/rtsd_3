// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from rtsd_interfaces:msg/Point2.idl
// generated code does not contain a copyright notice
#include "rtsd_interfaces/msg/detail/point2__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>


bool
rtsd_interfaces__msg__Point2__init(rtsd_interfaces__msg__Point2 * msg)
{
  if (!msg) {
    return false;
  }
  // x
  // y
  return true;
}

void
rtsd_interfaces__msg__Point2__fini(rtsd_interfaces__msg__Point2 * msg)
{
  if (!msg) {
    return;
  }
  // x
  // y
}

rtsd_interfaces__msg__Point2 *
rtsd_interfaces__msg__Point2__create()
{
  rtsd_interfaces__msg__Point2 * msg = (rtsd_interfaces__msg__Point2 *)malloc(sizeof(rtsd_interfaces__msg__Point2));
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(rtsd_interfaces__msg__Point2));
  bool success = rtsd_interfaces__msg__Point2__init(msg);
  if (!success) {
    free(msg);
    return NULL;
  }
  return msg;
}

void
rtsd_interfaces__msg__Point2__destroy(rtsd_interfaces__msg__Point2 * msg)
{
  if (msg) {
    rtsd_interfaces__msg__Point2__fini(msg);
  }
  free(msg);
}


bool
rtsd_interfaces__msg__Point2__Sequence__init(rtsd_interfaces__msg__Point2__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rtsd_interfaces__msg__Point2 * data = NULL;
  if (size) {
    data = (rtsd_interfaces__msg__Point2 *)calloc(size, sizeof(rtsd_interfaces__msg__Point2));
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = rtsd_interfaces__msg__Point2__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        rtsd_interfaces__msg__Point2__fini(&data[i - 1]);
      }
      free(data);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
rtsd_interfaces__msg__Point2__Sequence__fini(rtsd_interfaces__msg__Point2__Sequence * array)
{
  if (!array) {
    return;
  }
  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      rtsd_interfaces__msg__Point2__fini(&array->data[i]);
    }
    free(array->data);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

rtsd_interfaces__msg__Point2__Sequence *
rtsd_interfaces__msg__Point2__Sequence__create(size_t size)
{
  rtsd_interfaces__msg__Point2__Sequence * array = (rtsd_interfaces__msg__Point2__Sequence *)malloc(sizeof(rtsd_interfaces__msg__Point2__Sequence));
  if (!array) {
    return NULL;
  }
  bool success = rtsd_interfaces__msg__Point2__Sequence__init(array, size);
  if (!success) {
    free(array);
    return NULL;
  }
  return array;
}

void
rtsd_interfaces__msg__Point2__Sequence__destroy(rtsd_interfaces__msg__Point2__Sequence * array)
{
  if (array) {
    rtsd_interfaces__msg__Point2__Sequence__fini(array);
  }
  free(array);
}
