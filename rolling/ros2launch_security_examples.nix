{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  ament_nodl,
  example_interfaces,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  nodl_python,
  nodl_to_policy,
  rclcpp,
  rclcpp_components,
  rclpy,
  ros2launch_security,
  sensor_msgs,
  sros2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2launch_security_examples";
  pkgFinal = final.rolling.ros2launch_security_examples;
  src = srcs.ros2launch_security.ros2launch_security_examples;

  colconBuildDepends = [
    ament_cmake
    ament_nodl
    example_interfaces
    rclcpp
    rclcpp_components
    rclpy
    ros2launch_security
    sensor_msgs
  ];

  colconRunDepends = [
    ament_nodl
    example_interfaces
    rclcpp
    rclcpp_components
    rclpy
    ros2launch_security
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    nodl_python
    nodl_to_policy
    sros2
  ];
}
