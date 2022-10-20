{
  actionlib,
  catkin,
  geometry_msgs,
  move_base_msgs,
  nav_msgs,
  roscpp,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pose_base_controller";
  pkgFinal = final.noetic.pose_base_controller;
  src = srcs.navigation_experimental.pose_base_controller;

  colconBuildDepends = [
    actionlib
    catkin
    geometry_msgs
    move_base_msgs
    nav_msgs
    roscpp
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    actionlib
    geometry_msgs
    move_base_msgs
    nav_msgs
    roscpp
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
