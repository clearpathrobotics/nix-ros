{
  camera_info_manager,
  catkin,
  ffmpeg,
  image_transport,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  v4l-utils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "usb_cam";
  pkgFinal = final.noetic.usb_cam;
  src = srcs.usb_cam.usb_cam;

  colconBuildDepends = [
    camera_info_manager
    catkin
    ffmpeg
    image_transport
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    camera_info_manager
    ffmpeg
    image_transport
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    v4l-utils
  ];

  colconTestDepends = [
  ];
}
