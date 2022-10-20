{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  dynamic_tf_publisher,
  eigen_conversions,
  image_geometry,
  image_publisher,
  jsk_recognition_msgs,
  jsk_tools,
  jsk_topic_tools,
  message_filters,
  posedetection_msgs,
  rosconsole,
  roscpp,
  rostest,
  sensor_msgs,
  tf,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "checkerboard_detector";
  pkgFinal = final.noetic.checkerboard_detector;
  src = srcs.jsk_recognition.checkerboard_detector;

  colconBuildDepends = [
    catkin
    cv_bridge
    dynamic_reconfigure
    eigen_conversions
    image_geometry
    jsk_recognition_msgs
    message_filters
    posedetection_msgs
    rosconsole
    roscpp
    sensor_msgs
    tf
    tf2
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    dynamic_tf_publisher
    eigen_conversions
    image_geometry
    image_publisher
    jsk_recognition_msgs
    message_filters
    posedetection_msgs
    rosconsole
    roscpp
    sensor_msgs
    tf
    tf2
  ];

  colconTestDepends = [
    jsk_tools
    jsk_topic_tools
    rostest
  ];
}
