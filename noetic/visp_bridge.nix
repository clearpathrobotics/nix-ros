{
  camera_calibration_parsers,
  catkin,
  geometry_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visp_bridge";
  pkgFinal = final.noetic.visp_bridge;
  src = srcs.vision_visp.visp_bridge;

  colconBuildDepends = [
    camera_calibration_parsers
    catkin
    geometry_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    camera_calibration_parsers
    geometry_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
