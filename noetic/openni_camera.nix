{
  camera_info_manager,
  catkin,
  dynamic_reconfigure,
  image_transport,
  libusb1,
  log4cxx,
  nodelet,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openni_camera";
  pkgFinal = final.noetic.openni_camera;
  src = srcs.openni_camera.openni_camera;

  colconBuildDepends = [
    camera_info_manager
    catkin
    dynamic_reconfigure
    image_transport
    libusb1
    log4cxx
    nodelet
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    dynamic_reconfigure
    image_transport
    libusb1
    log4cxx
    nodelet
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
