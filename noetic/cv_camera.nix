{
  camera_info_manager,
  catkin,
  cv_bridge,
  image_transport,
  nodelet,
  opencv,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cv_camera";
  pkgFinal = final.noetic.cv_camera;
  src = srcs.cv_camera.cv_camera;

  colconBuildDepends = [
    camera_info_manager
    catkin
    cv_bridge
    image_transport
    nodelet
    opencv
    roscpp
    roslint
    rostest
    sensor_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    image_transport
    nodelet
    opencv
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
