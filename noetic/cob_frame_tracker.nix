{
  actionlib,
  actionlib_msgs,
  boost,
  catkin,
  cob_srvs,
  control_toolbox,
  dynamic_reconfigure,
  geometry_msgs,
  interactive_markers,
  kdl_conversions,
  kdl_parser,
  message_generation,
  message_runtime,
  roscpp,
  roslint,
  rospy,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_frame_tracker";
  pkgFinal = final.noetic.cob_frame_tracker;
  src = srcs.cob_control.cob_frame_tracker;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    boost
    catkin
    cob_srvs
    control_toolbox
    dynamic_reconfigure
    geometry_msgs
    interactive_markers
    kdl_conversions
    kdl_parser
    message_generation
    roscpp
    roslint
    sensor_msgs
    std_msgs
    std_srvs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    boost
    cob_srvs
    control_toolbox
    dynamic_reconfigure
    geometry_msgs
    interactive_markers
    kdl_conversions
    kdl_parser
    message_runtime
    roscpp
    roslint
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
