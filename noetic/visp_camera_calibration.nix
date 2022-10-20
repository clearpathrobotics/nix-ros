{
  camera_calibration_parsers,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  roscpp,
  rqt_console,
  sensor_msgs,
  std_msgs,
  visp_bridge,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visp_camera_calibration";
  pkgFinal = final.noetic.visp_camera_calibration;
  src = srcs.vision_visp.visp_camera_calibration;

  colconBuildDepends = [
    camera_calibration_parsers
    catkin
    geometry_msgs
    message_generation
    roscpp
    sensor_msgs
    std_msgs
    visp_bridge
  ];

  colconRunDepends = [
    camera_calibration_parsers
    geometry_msgs
    message_generation
    message_runtime
    roscpp
    rqt_console
    sensor_msgs
    std_msgs
    visp_bridge
  ];

  colconTestDepends = [
  ];
}
