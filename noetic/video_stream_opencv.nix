{
  camera_info_manager,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_transport,
  nodelet,
  roscpp,
  rospy,
  rostest,
  rostopic,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "video_stream_opencv";
  pkgFinal = final.noetic.video_stream_opencv;
  src = srcs.video_stream_opencv.video_stream_opencv;

  colconBuildDepends = [
    camera_info_manager
    catkin
    cv_bridge
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    rospy
    sensor_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
    rostest
    rostopic
  ];
}
