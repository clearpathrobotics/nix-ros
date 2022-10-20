{
  ament_cmake,
  ament_cmake_gtest,
  builtin_interfaces,
  geometry_msgs,
  orocos_kdl_vendor,
  rclcpp,
  tf2,
  tf2_msgs,
  tf2_ros,
  tf2_ros_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_kdl";
  pkgFinal = final.rolling.tf2_kdl;
  src = srcs.geometry2.tf2_kdl;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    orocos_kdl_vendor
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    orocos_kdl_vendor
    tf2
    tf2_ros
    tf2_ros_py
  ];

  colconTestDepends = [
    ament_cmake_gtest
    rclcpp
    tf2_msgs
  ];
}
