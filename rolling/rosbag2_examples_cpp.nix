{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  example_interfaces,
  rclcpp,
  rosbag2_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_examples_cpp";
  pkgFinal = final.rolling.rosbag2_examples_cpp;
  src = srcs.rosbag2.rosbag2_examples_cpp;

  colconBuildDepends = [
    ament_cmake
    example_interfaces
    rclcpp
    rosbag2_cpp
  ];

  colconRunDepends = [
    example_interfaces
    rclcpp
    rosbag2_cpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
