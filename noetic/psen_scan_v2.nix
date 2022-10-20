{
  catkin,
  cmake_modules,
  code_coverage,
  fmt,
  geometry_msgs,
  message_generation,
  message_runtime,
  robot_state_publisher,
  rosbag,
  rosconsole_bridge,
  roscpp,
  roslaunch,
  rostest,
  rosunit,
  rviz,
  sensor_msgs,
  std_msgs,
  tinyxml-2,
  visualization_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "psen_scan_v2";
  pkgFinal = final.noetic.psen_scan_v2;
  src = srcs.psen_scan_v2.psen_scan_v2;

  colconBuildDepends = [
    catkin
    cmake_modules
    fmt
    geometry_msgs
    message_generation
    rosconsole_bridge
    roscpp
    sensor_msgs
    std_msgs
    tinyxml-2
    visualization_msgs
  ];

  colconRunDepends = [
    fmt
    geometry_msgs
    message_runtime
    robot_state_publisher
    rosconsole_bridge
    roscpp
    roslaunch
    rviz
    sensor_msgs
    std_msgs
    tinyxml-2
    visualization_msgs
    xacro
  ];

  colconTestDepends = [
    code_coverage
    rosbag
    roslaunch
    rostest
    rosunit
  ];
}
