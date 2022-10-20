{
  catkin,
  image_publisher,
  message_generation,
  message_runtime,
  rosbridge_server,
  rospy,
  rostest,
  roswww,
  rviz,
  rwt_utils_3rdparty,
  std_srvs,
  web_video_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_image_view";
  pkgFinal = final.noetic.rwt_image_view;
  src = srcs.visualization_rwt.rwt_image_view;

  colconBuildDepends = [
    catkin
    message_generation
    rospy
    roswww
    rwt_utils_3rdparty
    std_srvs
    web_video_server
  ];

  colconRunDepends = [
    message_runtime
    rosbridge_server
    rospy
    roswww
    rwt_utils_3rdparty
    std_srvs
    web_video_server
  ];

  colconTestDepends = [
    image_publisher
    rostest
    rviz
  ];
}
