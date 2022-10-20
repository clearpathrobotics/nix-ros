{
  ament_cmake,
  ament_cmake_gtest,
  builtin_interfaces,
  eigen,
  geometry_msgs,
  launch_ros,
  launch_testing_ament_cmake,
  rclcpp,
  tf2,
  tf2_bullet,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_kdl,
  tf2_ros,
  tf2_ros_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_tf2";
  pkgFinal = final.rolling.test_tf2;
  src = srcs.geometry2.test_tf2;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    eigen
    geometry_msgs
    rclcpp
    tf2
    tf2_bullet
    tf2_eigen
    tf2_geometry_msgs
    tf2_kdl
    tf2_ros
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rclcpp
    tf2
    tf2_bullet
    tf2_eigen
    tf2_geometry_msgs
    tf2_kdl
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
    launch_ros
    launch_testing_ament_cmake
    tf2_ros_py
  ];
}
