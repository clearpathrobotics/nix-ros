{
  catkin,
  image_publisher,
  rosbridge_server,
  rostest,
  roswww,
  rviz,
  rwt_utils_3rdparty,
  web_video_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_steer";
  pkgFinal = final.noetic.rwt_steer;
  src = srcs.visualization_rwt.rwt_steer;

  colconBuildDepends = [
    catkin
    rosbridge_server
    roswww
    rwt_utils_3rdparty
    web_video_server
  ];

  colconRunDepends = [
    rosbridge_server
    roswww
    rwt_utils_3rdparty
    web_video_server
  ];

  colconTestDepends = [
    image_publisher
    rostest
    rviz
  ];
}
