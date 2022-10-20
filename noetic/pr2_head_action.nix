{
  actionlib,
  catkin,
  geometry_msgs,
  kdl_parser,
  message_filters,
  pr2_controllers_msgs,
  roscpp,
  sensor_msgs,
  tf,
  tf_conversions,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_head_action";
  pkgFinal = final.noetic.pr2_head_action;
  src = srcs.pr2_controllers.pr2_head_action;

  colconBuildDepends = [
    actionlib
    catkin
    geometry_msgs
    kdl_parser
    message_filters
    pr2_controllers_msgs
    roscpp
    sensor_msgs
    tf
    tf_conversions
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    geometry_msgs
    kdl_parser
    message_filters
    pr2_controllers_msgs
    roscpp
    sensor_msgs
    tf
    tf_conversions
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
