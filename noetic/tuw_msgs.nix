{
  catkin,
  tuw_airskin_msgs,
  tuw_gazebo_msgs,
  tuw_geometry_msgs,
  tuw_multi_robot_msgs,
  tuw_nav_msgs,
  tuw_object_msgs,
  tuw_vehicle_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_msgs";
  pkgFinal = final.noetic.tuw_msgs;
  src = srcs.tuw_msgs.tuw_msgs;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    tuw_airskin_msgs
    tuw_gazebo_msgs
    tuw_geometry_msgs
    tuw_multi_robot_msgs
    tuw_nav_msgs
    tuw_object_msgs
    tuw_vehicle_msgs
  ];

  colconTestDepends = [
  ];
}
