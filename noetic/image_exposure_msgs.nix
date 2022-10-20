{
  catkin,
  message_generation,
  message_runtime,
  statistics_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_exposure_msgs";
  pkgFinal = final.noetic.image_exposure_msgs;
  src = srcs.pointgrey_camera_driver.image_exposure_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    statistics_msgs
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    statistics_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
