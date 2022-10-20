{
  catkin,
  geometry_msgs,
  image_proc,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,
  visp_bridge,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visp_hand2eye_calibration";
  pkgFinal = final.noetic.visp_hand2eye_calibration;
  src = srcs.vision_visp.visp_hand2eye_calibration;

  colconBuildDepends = [
    catkin
    geometry_msgs
    image_proc
    message_generation
    roscpp
    sensor_msgs
    std_msgs
    visp_bridge
  ];

  colconRunDepends = [
    geometry_msgs
    image_proc
    message_generation
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
    visp_bridge
  ];

  colconTestDepends = [
  ];
}
