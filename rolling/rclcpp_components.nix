{
  ament_cmake_google_benchmark,
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  class_loader,
  composition_interfaces,
  launch_testing,
  rclcpp,
  rcpputils,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclcpp_components";
  pkgFinal = final.rolling.rclcpp_components;
  src = srcs.rclcpp.rclcpp_components;

  colconBuildDepends = [
    ament_cmake_ros
    ament_index_cpp
    class_loader
    composition_interfaces
    rclcpp
    rcpputils
  ];

  colconRunDepends = [
    ament_index_cpp
    class_loader
    composition_interfaces
    rclcpp
  ];

  colconTestDepends = [
    ament_cmake_google_benchmark
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch_testing
    std_msgs
  ];
}
