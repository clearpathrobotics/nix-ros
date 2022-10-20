{
  actionlib_msgs,
  ament_cmake,
  ament_cmake_pytest,
  builtin_interfaces,
  diagnostic_msgs,
  example_interfaces,
  geometry_msgs,
  nav_msgs,
  rclpy,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,
  std_srvs,
  stereo_msgs,
  tf2_msgs,
  trajectory_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbridge_test_msgs";
  pkgFinal = final.rolling.rosbridge_test_msgs;
  src = srcs.rosbridge_suite.rosbridge_test_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rclpy
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    actionlib_msgs
    ament_cmake_pytest
    builtin_interfaces
    diagnostic_msgs
    example_interfaces
    geometry_msgs
    nav_msgs
    sensor_msgs
    std_msgs
    std_srvs
    stereo_msgs
    tf2_msgs
    trajectory_msgs
    visualization_msgs
  ];
}
