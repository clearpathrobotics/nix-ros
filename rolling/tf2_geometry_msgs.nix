{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  orocos_kdl_vendor,
  python3Packages,
  python_cmake_module,
  rclcpp,
  tf2,
  tf2_ros,
  tf2_ros_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_geometry_msgs";
  pkgFinal = final.rolling.tf2_geometry_msgs;
  src = srcs.geometry2.tf2_geometry_msgs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    orocos_kdl_vendor
    python_cmake_module
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    orocos_kdl_vendor
    python3Packages.numpy
    tf2
    tf2_ros
    tf2_ros_py
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    rclcpp
  ];
}
