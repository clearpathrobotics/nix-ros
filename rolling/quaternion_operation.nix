{
  ament_cmake,
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  eigen,
  geometry_msgs,
  ouxt_lint_common,
  rclcpp,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "quaternion_operation";
  pkgFinal = final.rolling.quaternion_operation;
  src = srcs.quaternion_operation.quaternion_operation;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_auto
    eigen
    geometry_msgs
    rclcpp
    tf2_ros
  ];

  colconRunDepends = [
    ament_cmake_auto
    eigen
    geometry_msgs
    rclcpp
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ouxt_lint_common
  ];
}
