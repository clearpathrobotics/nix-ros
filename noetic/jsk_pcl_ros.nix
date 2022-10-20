{
  boost,
  catkin,
  checkerboard_detector,
  cv_bridge,
  diagnostic_msgs,
  diagnostic_updater,
  dynamic_reconfigure,
  eigen_conversions,
  fetch_description,
  geometry_msgs,
  image_geometry,
  image_transport,
  image_view2,
  interactive_markers,
  jsk_data,
  jsk_footstep_msgs,
  jsk_interactive_marker,
  jsk_pcl_ros_utils,
  jsk_perception,
  jsk_recognition_msgs,
  jsk_recognition_utils,
  jsk_tools,
  jsk_topic_tools,
  kdl_conversions,
  kdl_parser,
  laser_assembler,
  libyamlcpp,
  moveit_core,
  moveit_ros_perception,
  nav_msgs,
  nodelet,
  octomap_server,
  openni2_launch,
  openni_launch,
  pcl_conversions,
  pcl_msgs,
  pcl_ros,
  python3Packages,
  resized_image_transport,
  robot_self_filter,
  rosboost_cfg,
  roscpp_tutorials,
  roslaunch,
  rostest,
  sensor_msgs,
  std_msgs,
  std_srvs,
  stereo_image_proc,
  stereo_msgs,
  tf,
  tf2_ros,
  tf_conversions,
  topic_tools,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_pcl_ros";
  pkgFinal = final.noetic.jsk_pcl_ros;
  src = srcs.jsk_recognition.jsk_pcl_ros;

  colconBuildDepends = [
    catkin
    cv_bridge
    dynamic_reconfigure
    image_geometry
    image_transport
    interactive_markers
    jsk_data
    jsk_pcl_ros_utils
    jsk_recognition_utils
    jsk_topic_tools
    kdl_parser
    laser_assembler
    libyamlcpp
    moveit_ros_perception
    octomap_server
    pcl_msgs
    pcl_ros
    tf
    tf_conversions
  ];

  colconRunDepends = [
    boost
    checkerboard_detector
    cv_bridge
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    eigen_conversions
    fetch_description
    geometry_msgs
    image_geometry
    image_transport
    image_view2
    interactive_markers
    jsk_data
    jsk_footstep_msgs
    jsk_interactive_marker
    jsk_pcl_ros_utils
    jsk_recognition_msgs
    jsk_recognition_utils
    jsk_topic_tools
    kdl_conversions
    kdl_parser
    laser_assembler
    libyamlcpp
    moveit_core
    moveit_ros_perception
    nav_msgs
    nodelet
    octomap_server
    openni2_launch
    openni_launch
    pcl_conversions
    pcl_msgs
    pcl_ros
    python3Packages.scikitlearn
    resized_image_transport
    robot_self_filter
    rosboost_cfg
    roscpp_tutorials
    sensor_msgs
    std_msgs
    std_srvs
    stereo_image_proc
    stereo_msgs
    tf
    tf2_ros
    tf_conversions
    topic_tools
    visualization_msgs
  ];

  colconTestDepends = [
    jsk_perception
    jsk_tools
    roslaunch
    rostest
  ];
}
