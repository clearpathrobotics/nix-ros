{
  catkin,
  geometry_msgs,
  image_publisher,
  map_server,
  move_base_msgs,
  rosbridge_server,
  roscpp,
  rostest,
  roswww,
  rviz,
  rwt_utils_3rdparty,
  tf,
  web_video_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_nav";
  pkgFinal = final.noetic.rwt_nav;
  src = srcs.visualization_rwt.rwt_nav;

  colconBuildDepends = [
    catkin
    geometry_msgs
    rosbridge_server
    roscpp
    roswww
    rwt_utils_3rdparty
    tf
    web_video_server
  ];

  colconRunDepends = [
    geometry_msgs
    rosbridge_server
    roscpp
    roswww
    rwt_utils_3rdparty
    tf
    web_video_server
  ];

  colconTestDepends = [
    image_publisher
    map_server
    move_base_msgs
    rostest
    rviz
  ];
}
