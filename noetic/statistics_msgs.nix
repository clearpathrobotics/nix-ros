{
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "statistics_msgs";
  pkgFinal = final.noetic.statistics_msgs;
  src = srcs.pointgrey_camera_driver.statistics_msgs;

  colconBuildDepends = [
    catkin
    message_generation
  ];

  colconRunDepends = [
    message_runtime
  ];

  colconTestDepends = [
  ];
}
