{
  camera_info_manager,
  catkin,
  curl,
  diagnostic_updater,
  dpkg,
  dynamic_reconfigure,
  image_exposure_msgs,
  image_proc,
  image_transport,
  libusb1,
  nodelet,
  roscpp,
  roslaunch,
  roslint,
  sensor_msgs,
  wfov_camera_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "spinnaker_camera_driver";
  pkgFinal = final.noetic.spinnaker_camera_driver;
  src = srcs.flir_camera_driver.spinnaker_camera_driver;

  colconBuildDepends = [
    camera_info_manager
    catkin
    curl
    diagnostic_updater
    dpkg
    dynamic_reconfigure
    image_exposure_msgs
    image_transport
    libusb1
    nodelet
    roscpp
    sensor_msgs
    wfov_camera_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    diagnostic_updater
    dynamic_reconfigure
    image_exposure_msgs
    image_proc
    image_transport
    libusb1
    nodelet
    roscpp
    sensor_msgs
    wfov_camera_msgs
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
