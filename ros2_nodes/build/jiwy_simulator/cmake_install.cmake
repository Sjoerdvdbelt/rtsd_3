# Install script for directory: /home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/src/jiwy_simulator

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/install/jiwy_simulator")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/jiwy_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/jiwy_simulator")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/jiwy_simulator"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator" TYPE EXECUTABLE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/jiwy_simulator")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/jiwy_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/jiwy_simulator")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/jiwy_simulator"
         OLD_RPATH "/home/pi/ros2_galactic/install/rclcpp/lib:/home/pi/ros2_galactic/install/sensor_msgs/lib:/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/install/rtsd_interfaces/lib:/home/pi/ros2_galactic/install/ament_index_cpp/lib:/home/pi/ros2_galactic/install/libstatistics_collector/lib:/home/pi/ros2_galactic/install/rcl/lib:/home/pi/ros2_galactic/install/rcl_interfaces/lib:/home/pi/ros2_galactic/install/rmw_implementation/lib:/home/pi/ros2_galactic/install/rcl_logging_spdlog/lib:/home/pi/ros2_galactic/install/rcl_logging_interface/lib:/home/pi/ros2_galactic/install/rcl_yaml_param_parser/lib:/home/pi/ros2_galactic/install/rmw/lib:/home/pi/ros2_galactic/install/libyaml_vendor/lib:/home/pi/ros2_galactic/install/rosgraph_msgs/lib:/home/pi/ros2_galactic/install/statistics_msgs/lib:/home/pi/ros2_galactic/install/tracetools/lib:/home/pi/ros2_galactic/install/geometry_msgs/lib:/home/pi/ros2_galactic/install/std_msgs/lib:/home/pi/ros2_galactic/install/builtin_interfaces/lib:/home/pi/ros2_galactic/install/rosidl_typesupport_introspection_cpp/lib:/home/pi/ros2_galactic/install/rosidl_typesupport_introspection_c/lib:/home/pi/ros2_galactic/install/rosidl_typesupport_cpp/lib:/home/pi/ros2_galactic/install/rosidl_typesupport_c/lib:/home/pi/ros2_galactic/install/rcpputils/lib:/home/pi/ros2_galactic/install/rosidl_runtime_c/lib:/home/pi/ros2_galactic/install/rcutils/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/jiwy_simulator")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/setpoint_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/setpoint_simulator")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/setpoint_simulator"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator" TYPE EXECUTABLE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/setpoint_simulator")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/setpoint_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/setpoint_simulator")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/setpoint_simulator"
         OLD_RPATH "/home/pi/ros2_galactic/install/rclcpp/lib:/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/install/rtsd_interfaces/lib:/home/pi/ros2_galactic/install/ament_index_cpp/lib:/home/pi/ros2_galactic/install/libstatistics_collector/lib:/home/pi/ros2_galactic/install/std_msgs/lib:/home/pi/ros2_galactic/install/rcl/lib:/home/pi/ros2_galactic/install/rcl_interfaces/lib:/home/pi/ros2_galactic/install/rmw_implementation/lib:/home/pi/ros2_galactic/install/rcl_logging_spdlog/lib:/home/pi/ros2_galactic/install/rcl_logging_interface/lib:/home/pi/ros2_galactic/install/rcl_yaml_param_parser/lib:/home/pi/ros2_galactic/install/rmw/lib:/home/pi/ros2_galactic/install/libyaml_vendor/lib:/home/pi/ros2_galactic/install/rosgraph_msgs/lib:/home/pi/ros2_galactic/install/statistics_msgs/lib:/home/pi/ros2_galactic/install/builtin_interfaces/lib:/home/pi/ros2_galactic/install/tracetools/lib:/home/pi/ros2_galactic/install/rosidl_typesupport_introspection_cpp/lib:/home/pi/ros2_galactic/install/rosidl_typesupport_introspection_c/lib:/home/pi/ros2_galactic/install/rosidl_typesupport_cpp/lib:/home/pi/ros2_galactic/install/rosidl_typesupport_c/lib:/home/pi/ros2_galactic/install/rcpputils/lib:/home/pi/ros2_galactic/install/rosidl_runtime_c/lib:/home/pi/ros2_galactic/install/rcutils/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/jiwy_simulator/setpoint_simulator")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/jiwy_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/jiwy_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator/environment" TYPE FILE FILES "/home/pi/ros2_galactic/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator/environment" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator/environment" TYPE FILE FILES "/home/pi/ros2_galactic/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator/environment" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_index/share/ament_index/resource_index/packages/jiwy_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator/cmake" TYPE FILE FILES
    "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_core/jiwy_simulatorConfig.cmake"
    "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/ament_cmake_core/jiwy_simulatorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jiwy_simulator" TYPE FILE FILES "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/src/jiwy_simulator/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/rtsd_group_01/code/rtsd_assignment_3/ros2_nodes/build/jiwy_simulator/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
