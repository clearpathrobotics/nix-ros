{
  ament_cmake,
  ament_cmake_ros,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  python3Packages,
  rclpy,
  rosapi,
  rosbridge_library,
  rosbridge_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbridge_server";
  pkgFinal = final.rolling.rosbridge_server;
  src = srcs.rosbridge_suite.rosbridge_server;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_ros
  ];

  colconRunDepends = [
    python3Packages.tornado
    python3Packages.twisted
    rclpy
    rosapi
    rosbridge_library
    rosbridge_msgs
  ];

  colconTestDepends = [
    launch
    launch_ros
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    python3Packages.autobahn
    std_srvs
  ];
}
