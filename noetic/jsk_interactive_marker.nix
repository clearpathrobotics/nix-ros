{
  actionlib,
  catkin,
  cmake_modules,
  dynamic_reconfigure,
  dynamic_tf_publisher,
  eigen_conversions,
  geometry_msgs,
  interactive_markers,
  jsk_footstep_msgs,
  jsk_recognition_msgs,
  jsk_recognition_utils,
  jsk_rviz_plugins,
  jsk_topic_tools,
  libyamlcpp,
  message_filters,
  message_generation,
  message_runtime,
  mk,
  moveit_msgs,
  rosbuild,
  roscpp,
  roseus,
  roslib,
  rviz,
  sensor_msgs,
  tf,
  tf_conversions,
  tinyxml,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_interactive_marker";
  pkgFinal = final.noetic.jsk_interactive_marker;
  src = srcs.jsk_visualization.jsk_interactive_marker;

  colconBuildDepends = [
    actionlib
    catkin
    cmake_modules
    dynamic_reconfigure
    dynamic_tf_publisher
    eigen_conversions
    geometry_msgs
    interactive_markers
    jsk_footstep_msgs
    jsk_recognition_msgs
    jsk_recognition_utils
    jsk_rviz_plugins
    jsk_topic_tools
    libyamlcpp
    message_filters
    message_generation
    mk
    moveit_msgs
    rosbuild
    roscpp
    roseus
    roslib
    rviz
    sensor_msgs
    tf
    tf_conversions
    tinyxml
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    dynamic_reconfigure
    dynamic_tf_publisher
    eigen_conversions
    geometry_msgs
    interactive_markers
    jsk_footstep_msgs
    jsk_recognition_msgs
    jsk_recognition_utils
    jsk_rviz_plugins
    jsk_topic_tools
    libyamlcpp
    message_filters
    message_runtime
    moveit_msgs
    roscpp
    roseus
    roslib
    rviz
    sensor_msgs
    tf
    tf_conversions
    tinyxml
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
