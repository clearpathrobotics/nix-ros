{
  camera_calibration_parsers,
  catkin,
  compressed_image_transport,
  cv_bridge,
  dynamic_reconfigure,
  image_proc,
  roslang,
  rospack,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "opt_camera";
  pkgFinal = final.noetic.opt_camera;
  src = srcs.jsk_3rdparty.opt_camera;

  colconBuildDepends = [
    camera_calibration_parsers
    catkin
    compressed_image_transport
    cv_bridge
    dynamic_reconfigure
    image_proc
    roslang
    rospack
    sensor_msgs
  ];

  colconRunDepends = [
    camera_calibration_parsers
    compressed_image_transport
    cv_bridge
    dynamic_reconfigure
    image_proc
    rospack
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
