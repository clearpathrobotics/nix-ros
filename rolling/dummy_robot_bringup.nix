{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  dummy_map_server,
  dummy_sensors,
  launch,
  launch_ros,
  robot_state_publisher,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dummy_robot_bringup";
  pkgFinal = final.rolling.dummy_robot_bringup;
  src = srcs.demos.dummy_robot_bringup;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_index_python
    dummy_map_server
    dummy_sensors
    launch
    launch_ros
    robot_state_publisher
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
