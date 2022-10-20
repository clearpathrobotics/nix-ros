{
  catkin,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vl53l1x";
  pkgFinal = final.noetic.vl53l1x;
  src = srcs.vl53l1x_ros.vl53l1x;

  colconBuildDepends = [
    catkin
    message_generation
    message_runtime
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    message_generation
    message_runtime
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
