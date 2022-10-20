{
  catkin,
  cv_bridge,
  diagnostic_msgs,
  dynamic_reconfigure,
  face_detector,
  geometry_msgs,
  image_geometry,
  image_publisher,
  image_transport,
  joint_state_publisher,
  jsk_data,
  jsk_footstep_msgs,
  jsk_gui_msgs,
  jsk_hark_msgs,
  jsk_recognition_msgs,
  jsk_recognition_utils,
  jsk_topic_tools,
  message_generation,
  mk,
  openni2_launch,
  people_msgs,
  posedetection_msgs,
  pr2_description,
  python3Packages,
  robot_state_publisher,
  rosbuild,
  rostest,
  rviz,
  std_msgs,
  urdfdom_py,
  view_controller_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_rviz_plugins";
  pkgFinal = final.noetic.jsk_rviz_plugins;
  src = srcs.jsk_visualization.jsk_rviz_plugins;

  colconBuildDepends = [
    catkin
    cv_bridge
    diagnostic_msgs
    dynamic_reconfigure
    geometry_msgs
    image_geometry
    jsk_footstep_msgs
    jsk_gui_msgs
    jsk_hark_msgs
    jsk_recognition_msgs
    jsk_recognition_utils
    jsk_topic_tools
    message_generation
    mk
    people_msgs
    rosbuild
    rviz
    std_msgs
    urdfdom_py
    view_controller_msgs
  ];

  colconRunDepends = [
    cv_bridge
    diagnostic_msgs
    dynamic_reconfigure
    geometry_msgs
    image_geometry
    image_publisher
    jsk_footstep_msgs
    jsk_gui_msgs
    jsk_hark_msgs
    jsk_recognition_msgs
    jsk_recognition_utils
    jsk_topic_tools
    message_generation
    people_msgs
    posedetection_msgs
    python3Packages.scipy
    rviz
    std_msgs
    urdfdom_py
    view_controller_msgs
  ];

  colconTestDepends = [
    face_detector
    image_transport
    joint_state_publisher
    jsk_data
    openni2_launch
    pr2_description
    robot_state_publisher
    rostest
  ];
}
