{
  catkin,
  geometry_msgs,
  nav_msgs,
  roscpp,
  tuw_geometry,
  tuw_multi_robot_msgs,
  tuw_nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_multi_robot_local_behavior_controller";
  pkgFinal = final.noetic.tuw_multi_robot_local_behavior_controller;
  src = srcs.tuw_multi_robot.tuw_multi_robot_local_behavior_controller;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    tuw_geometry
    tuw_multi_robot_msgs
    tuw_nav_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    roscpp
    tuw_geometry
    tuw_multi_robot_msgs
    tuw_nav_msgs
  ];

  colconTestDepends = [
  ];
}
