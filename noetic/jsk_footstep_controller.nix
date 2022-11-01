{
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  dynamic_reconfigure,
  genmsg,
  geometry_msgs,
  jsk_footstep_msgs,
  jsk_footstep_planner,
  jsk_pcl_ros,
  jsk_topic_tools,
  kdl_conversions,
  kdl_parser,
  message_filters,
  message_generation,
  sensor_msgs,
  sound_play,
  std_msgs,
  tf,
  tf2,
  tf_conversions,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_footstep_controller";
  pkgFinal = final.noetic.jsk_footstep_controller;
  src = srcs.jsk_control.jsk_footstep_controller;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    genmsg
    geometry_msgs
    jsk_footstep_msgs
    jsk_footstep_planner
    jsk_pcl_ros
    jsk_topic_tools
    kdl_conversions
    kdl_parser
    message_filters
    message_generation
    sensor_msgs
    std_msgs
    tf
    tf2
    tf_conversions
    urdf
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    genmsg
    geometry_msgs
    jsk_footstep_msgs
    jsk_footstep_planner
    jsk_pcl_ros
    jsk_topic_tools
    kdl_conversions
    kdl_parser
    message_filters
    message_generation
    sensor_msgs
    sound_play
    std_msgs
    tf
    tf2
    tf_conversions
    urdf
  ];

  colconTestDepends = [
  ];
}
