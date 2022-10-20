{
  catkin,
  geometry_msgs,
  nav_msgs,
  nodelet,
  roscpp,
  std_msgs,
  tf,
  tuw_multi_robot_msgs,
  tuw_nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_multi_robot_ctrl";
  pkgFinal = final.noetic.tuw_multi_robot_ctrl;
  src = srcs.tuw_multi_robot.tuw_multi_robot_ctrl;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    nodelet
    roscpp
    std_msgs
    tf
    tuw_multi_robot_msgs
    tuw_nav_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    nodelet
    roscpp
    std_msgs
    tf
    tuw_multi_robot_msgs
    tuw_nav_msgs
  ];

  colconTestDepends = [
  ];
}
