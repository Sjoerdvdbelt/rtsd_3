cmake_minimum_required(VERSION 3.8)
project(light_detection_3)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(rtsd_interfaces REQUIRED)
find_package(OpenCV REQUIRED)

add_executable(bright_position src/bright_position.cpp)
add_executable(motor_test src/motor_test.cpp)

ament_target_dependencies(bright_position rclcpp rtsd_interfaces OpenCV sensor_msgs)
ament_target_dependencies(motor_test rclcpp rtsd_interfaces)

target_include_directories(bright_position PUBLIC
$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
$<INSTALL_INTERFACE:include>)
target_compile_features(bright_position PUBLIC c_std_99 cxx_std_17)  # Require C99 and C++17

install(TARGETS bright_position motor_test
  DESTINATION lib/${PROJECT_NAME})

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
