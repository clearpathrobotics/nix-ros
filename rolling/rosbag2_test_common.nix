{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rcutils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_test_common";
  pkgFinal = final.rolling.rosbag2_test_common;
  src = srcs.rosbag2.rosbag2_test_common;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rcutils
  ];

  colconRunDepends = [
    rclcpp
    rcutils
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
