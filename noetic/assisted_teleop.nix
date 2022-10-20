{
  actionlib,
  angles,
  base_local_planner,
  catkin,
  costmap_2d,
  eigen,
  filters,
  geometry_msgs,
  message_filters,
  move_base_msgs,
  pluginlib,
  roscpp,
  roslib,
  sensor_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "assisted_teleop";
  pkgFinal = final.noetic.assisted_teleop;
  src = srcs.navigation_experimental.assisted_teleop;

  colconBuildDepends = [
    actionlib
    angles
    base_local_planner
    catkin
    costmap_2d
    eigen
    filters
    geometry_msgs
    message_filters
    move_base_msgs
    pluginlib
    roscpp
    roslib
    sensor_msgs
    tf2_ros
  ];

  colconRunDepends = [
    actionlib
    angles
    base_local_planner
    costmap_2d
    eigen
    filters
    geometry_msgs
    message_filters
    move_base_msgs
    pluginlib
    roscpp
    roslib
    sensor_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
