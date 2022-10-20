{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  opencv,
  rclcpp,
  rmw_implementation_cmake,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "intra_process_demo";
  pkgFinal = final.rolling.intra_process_demo;
  src = srcs.demos.intra_process_demo;

  colconBuildDepends = [
    ament_cmake
    opencv
    rclcpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    opencv
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    rmw_implementation_cmake
  ];
}
