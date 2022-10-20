{
  catkin,
  dynamic_reconfigure,
  filters,
  geometry_msgs,
  laser_filters,
  laser_geometry,
  laser_tilt_controller_filter,
  message_filters,
  pcl_ros,
  pr2_machine,
  pr2_navigation_self_filter,
  roscpp,
  semantic_point_annotator,
  sensor_msgs,
  tf,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_navigation_perception";
  pkgFinal = final.noetic.pr2_navigation_perception;
  src = srcs.pr2_navigation.pr2_navigation_perception;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    filters
    geometry_msgs
    laser_filters
    laser_geometry
    laser_tilt_controller_filter
    message_filters
    pcl_ros
    pr2_machine
    pr2_navigation_self_filter
    roscpp
    semantic_point_annotator
    sensor_msgs
    tf
    topic_tools
  ];

  colconRunDepends = [
    dynamic_reconfigure
    filters
    geometry_msgs
    laser_filters
    laser_geometry
    laser_tilt_controller_filter
    message_filters
    pcl_ros
    pr2_machine
    pr2_navigation_self_filter
    roscpp
    semantic_point_annotator
    sensor_msgs
    tf
    topic_tools
  ];

  colconTestDepends = [
  ];
}
