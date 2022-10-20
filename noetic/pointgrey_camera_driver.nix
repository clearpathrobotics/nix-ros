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
  libraw1394,
  libusb1,
  nodelet,
  roscpp,
  roslaunch,
  roslint,
  sensor_msgs,
  stereo_image_proc,
  wfov_camera_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pointgrey_camera_driver";
  pkgFinal = final.noetic.pointgrey_camera_driver;
  src = srcs.pointgrey_camera_driver.pointgrey_camera_driver;

  colconBuildDepends = [
    camera_info_manager
    catkin
    curl
    diagnostic_updater
    dpkg
    dynamic_reconfigure
    image_exposure_msgs
    image_transport
    libraw1394
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
    libraw1394
    libusb1
    nodelet
    roscpp
    sensor_msgs
    stereo_image_proc
    wfov_camera_msgs
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
