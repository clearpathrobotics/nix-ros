{
  camera_info_manager,
  catkin,
  dynamic_reconfigure,
  image_transport,
  nodelet,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libuvc_camera";
  pkgFinal = final.noetic.libuvc_camera;
  src = srcs.libuvc_ros.libuvc_camera;

  colconBuildDepends = [
    camera_info_manager
    catkin
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
