{
  boost,
  catkin,
  nav_msgs,
  qt5,
  rviz,
  tuw_multi_robot_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_multi_robot_rviz";
  pkgFinal = final.noetic.tuw_multi_robot_rviz;
  src = srcs.tuw_multi_robot.tuw_multi_robot_rviz;

  colconBuildDepends = [
    boost
    catkin
    nav_msgs
    qt5.qtbase
    rviz
    tuw_multi_robot_msgs
  ];

  colconRunDepends = [
    boost
    nav_msgs
    rviz
    tuw_multi_robot_msgs
  ];

  colconTestDepends = [
  ];
}
