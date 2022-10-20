{
  catkin,
  nav_msgs,
  roscpp,
  tuw_geometry,
  tuw_multi_robot_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_multi_robot_goal_generator";
  pkgFinal = final.noetic.tuw_multi_robot_goal_generator;
  src = srcs.tuw_multi_robot.tuw_multi_robot_goal_generator;

  colconBuildDepends = [
    catkin
    nav_msgs
    roscpp
    tuw_geometry
    tuw_multi_robot_msgs
  ];

  colconRunDepends = [
    nav_msgs
    roscpp
    tuw_geometry
    tuw_multi_robot_msgs
  ];

  colconTestDepends = [
  ];
}
