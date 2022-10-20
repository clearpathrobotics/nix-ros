{
  actionlib_msgs,
  ament_cmake,
  ament_cmake_pytest,
  ament_cmake_ros,
  builtin_interfaces,
  diagnostic_msgs,
  example_interfaces,
  geometry_msgs,
  nav_msgs,
  python3Packages,
  rclpy,
  rosbridge_test_msgs,
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
  name = "rosbridge_library";
  pkgFinal = final.rolling.rosbridge_library;
  src = srcs.rosbridge_suite.rosbridge_library;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_ros
    python3Packages.bson
    python3Packages.pillow
  ];

  colconRunDepends = [
    python3Packages.bson
    python3Packages.pillow
    rclpy
    rosidl_default_runtime
  ];

  colconTestDepends = [
    actionlib_msgs
    ament_cmake_pytest
    builtin_interfaces
    diagnostic_msgs
    example_interfaces
    geometry_msgs
    nav_msgs
    rosbridge_test_msgs
    sensor_msgs
    std_msgs
    std_srvs
    stereo_msgs
    tf2_msgs
    trajectory_msgs
    visualization_msgs
  ];
}
