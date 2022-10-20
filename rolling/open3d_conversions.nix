{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  rclcpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "open3d_conversions";
  pkgFinal = final.rolling.open3d_conversions;
  src = srcs.perception_open3d.open3d_conversions;

  colconBuildDepends = [
    ament_cmake_ros
    eigen
    rclcpp
    sensor_msgs
  ];

  colconRunDepends = [
    eigen
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
