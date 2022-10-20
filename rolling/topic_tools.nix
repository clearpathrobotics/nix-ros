{
  ament_cmake_auto,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_components,
  rclpy,
  ros2cli,
  rosidl_default_generators,
  topic_tools_interfaces,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "topic_tools";
  pkgFinal = final.rolling.topic_tools;
  src = srcs.topic_tools.topic_tools;

  colconBuildDepends = [
    ament_cmake_auto
    ament_cmake_python
    rclcpp
    rclcpp_components
    rosidl_default_generators
    topic_tools_interfaces
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    rclpy
    ros2cli
    topic_tools_interfaces
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
