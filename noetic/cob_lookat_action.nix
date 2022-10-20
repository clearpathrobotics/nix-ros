{
  actionlib,
  actionlib_msgs,
  angles,
  catkin,
  control_msgs,
  geometry_msgs,
  kdl_conversions,
  kdl_parser,
  message_generation,
  message_runtime,
  move_base_msgs,
  roscpp,
  rospy,
  sensor_msgs,
  tf,
  tf2_ros,
  tf_conversions,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_lookat_action";
  pkgFinal = final.noetic.cob_lookat_action;
  src = srcs.cob_manipulation.cob_lookat_action;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    angles
    catkin
    control_msgs
    geometry_msgs
    kdl_conversions
    kdl_parser
    message_generation
    move_base_msgs
    roscpp
    sensor_msgs
    tf
    tf2_ros
    tf_conversions
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    angles
    control_msgs
    geometry_msgs
    kdl_conversions
    kdl_parser
    message_runtime
    move_base_msgs
    roscpp
    rospy
    sensor_msgs
    tf
    tf2_ros
    tf_conversions
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
