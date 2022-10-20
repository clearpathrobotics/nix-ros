{
  catkin,
  geometry_msgs,
  nav_msgs,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mobile_robot_simulator";
  pkgFinal = final.noetic.mobile_robot_simulator;
  src = srcs.mobile_robot_simulator.mobile_robot_simulator;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
