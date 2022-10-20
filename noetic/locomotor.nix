{
  actionlib,
  catkin,
  geometry_msgs,
  locomotor_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  nav_msgs,
  pluginlib,
  roscpp,
  roslint,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "locomotor";
  pkgFinal = final.noetic.locomotor;
  src = srcs.robot_navigation.locomotor;

  colconBuildDepends = [
    actionlib
    catkin
    geometry_msgs
    locomotor_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_msgs
    pluginlib
    roscpp
    rospy
  ];

  colconRunDepends = [
    actionlib
    geometry_msgs
    locomotor_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_msgs
    pluginlib
    roscpp
    rospy
  ];

  colconTestDepends = [
    roslint
  ];
}
