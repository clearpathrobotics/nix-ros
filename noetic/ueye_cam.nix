{
  camera_calibration_parsers,
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
  name = "ueye_cam";
  pkgFinal = final.noetic.ueye_cam;
  src = srcs.ueye_cam.ueye_cam;

  colconBuildDepends = [
    camera_calibration_parsers
    camera_info_manager
    catkin
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    camera_calibration_parsers
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
