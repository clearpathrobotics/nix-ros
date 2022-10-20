{
  catkin,
  diagnostic_msgs,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  trajectory_msgs,
  ypspur,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ypspur_ros";
  pkgFinal = final.noetic.ypspur_ros;
  src = srcs.ypspur_ros.ypspur_ros;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    geometry_msgs
    message_generation
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
    ypspur
  ];

  colconRunDepends = [
    diagnostic_msgs
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
    ypspur
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
