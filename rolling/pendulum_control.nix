{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  pendulum_msgs,
  rclcpp,
  rmw_implementation_cmake,
  ros2run,
  rttest,
  tlsf_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pendulum_control";
  pkgFinal = final.rolling.pendulum_control;
  src = srcs.demos.pendulum_control;

  colconBuildDepends = [
    ament_cmake
    pendulum_msgs
    rclcpp
    rttest
    tlsf_cpp
  ];

  colconRunDepends = [
    pendulum_msgs
    rclcpp
    rttest
    tlsf_cpp
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    rmw_implementation_cmake
    ros2run
  ];
}
