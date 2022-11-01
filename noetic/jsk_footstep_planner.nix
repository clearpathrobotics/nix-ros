{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  jsk_footstep_msgs,
  jsk_interactive_marker,
  jsk_pcl_ros,
  jsk_recognition_msgs,
  jsk_recognition_utils,
  jsk_rviz_plugins,
  jsk_topic_tools,
  message_generation,
  pcl_ros,
  roscpp,
  roseus,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_footstep_planner";
  pkgFinal = final.noetic.jsk_footstep_planner;
  src = srcs.jsk_control.jsk_footstep_planner;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    jsk_footstep_msgs
    jsk_interactive_marker
    jsk_recognition_utils
    jsk_rviz_plugins
    jsk_topic_tools
    message_generation
    pcl_ros
    roscpp
    roseus
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    jsk_footstep_msgs
    jsk_interactive_marker
    jsk_pcl_ros
    jsk_recognition_msgs
    jsk_recognition_utils
    jsk_rviz_plugins
    jsk_topic_tools
    pcl_ros
    roscpp
    roseus
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
