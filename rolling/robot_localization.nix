{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  angles,
  boost,
  builtin_interfaces,
  diagnostic_msgs,
  diagnostic_updater,
  eigen,
  geographic_msgs,
  geographiclib,
  geometry_msgs,
  launch_ros,
  launch_testing_ament_cmake,
  message_filters,
  nav_msgs,
  rclcpp,
  rmw_implementation,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_localization";
  pkgFinal = final.rolling.robot_localization;
  src = srcs.robot_localization.robot_localization;

  colconBuildDepends = [
    ament_cmake
    angles
    boost
    builtin_interfaces
    diagnostic_msgs
    diagnostic_updater
    eigen
    geographic_msgs
    geographiclib
    geometry_msgs
    message_filters
    nav_msgs
    rclcpp
    rmw_implementation
    rosidl_default_generators
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    angles
    boost
    diagnostic_msgs
    diagnostic_updater
    eigen
    geographic_msgs
    geographiclib
    geometry_msgs
    message_filters
    nav_msgs
    rclcpp
    rmw_implementation
    rosidl_default_runtime
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    builtin_interfaces
    launch_ros
    launch_testing_ament_cmake
  ];
}
