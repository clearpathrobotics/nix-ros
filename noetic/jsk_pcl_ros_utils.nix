{
  boost,
  catkin,
  compressed_depth_image_transport,
  compressed_image_transport,
  cv_bridge,
  diagnostic_msgs,
  diagnostic_updater,
  dynamic_reconfigure,
  eigen_conversions,
  geometry_msgs,
  image_geometry,
  image_transport,
  image_view,
  image_view2,
  interactive_markers,
  jsk_data,
  jsk_footstep_msgs,
  jsk_perception,
  jsk_recognition_msgs,
  jsk_recognition_utils,
  jsk_rviz_plugins,
  jsk_tools,
  jsk_topic_tools,
  kdl_conversions,
  kdl_parser,
  laser_assembler,
  libyamlcpp,
  message_generation,
  message_runtime,
  moveit_core,
  moveit_ros_perception,
  nav_msgs,
  nodelet,
  octomap_msgs,
  octomap_ros,
  octomap_server,
  openni2_launch,
  pcl_conversions,
  pcl_msgs,
  pcl_ros,
  python3Packages,
  robot_self_filter,
  rosbag,
  rosboost_cfg,
  roscpp_tutorials,
  roslaunch,
  rostest,
  rviz,
  sensor_msgs,
  std_msgs,
  std_srvs,
  stereo_msgs,
  tf,
  tf2_ros,
  tf_conversions,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_pcl_ros_utils";
  pkgFinal = final.noetic.jsk_pcl_ros_utils;
  src = srcs.jsk_recognition.jsk_pcl_ros_utils;

  colconBuildDepends = [
    boost
    catkin
    cv_bridge
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    eigen_conversions
    geometry_msgs
    image_geometry
    image_transport
    image_view2
    interactive_markers
    jsk_data
    jsk_footstep_msgs
    jsk_recognition_msgs
    jsk_recognition_utils
    jsk_topic_tools
    kdl_conversions
    kdl_parser
    laser_assembler
    libyamlcpp
    message_generation
    moveit_core
    moveit_ros_perception
    nav_msgs
    nodelet
    octomap_msgs
    octomap_ros
    octomap_server
    pcl_conversions
    pcl_msgs
    pcl_ros
    python3Packages.pyyaml
    robot_self_filter
    rosboost_cfg
    roscpp_tutorials
    sensor_msgs
    std_msgs
    std_srvs
    stereo_msgs
    tf
    tf2_ros
    tf_conversions
    visualization_msgs
  ];

  colconRunDepends = [
    boost
    compressed_depth_image_transport
    compressed_image_transport
    cv_bridge
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    eigen_conversions
    geometry_msgs
    image_geometry
    image_transport
    image_view
    image_view2
    interactive_markers
    jsk_data
    jsk_footstep_msgs
    jsk_recognition_msgs
    jsk_recognition_utils
    jsk_rviz_plugins
    jsk_topic_tools
    kdl_conversions
    kdl_parser
    laser_assembler
    libyamlcpp
    message_runtime
    moveit_core
    moveit_ros_perception
    nav_msgs
    nodelet
    octomap_msgs
    octomap_ros
    octomap_server
    openni2_launch
    pcl_conversions
    pcl_msgs
    pcl_ros
    python3Packages.scikitlearn
    robot_self_filter
    rosbag
    rosboost_cfg
    roscpp_tutorials
    rviz
    sensor_msgs
    std_msgs
    std_srvs
    stereo_msgs
    tf
    tf2_ros
    tf_conversions
    visualization_msgs
  ];

  colconTestDepends = [
    jsk_perception
    jsk_tools
    roslaunch
    rostest
  ];
}