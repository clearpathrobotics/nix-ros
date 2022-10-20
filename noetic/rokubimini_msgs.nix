{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rokubimini_msgs";
  pkgFinal = final.noetic.rokubimini_msgs;
  src = srcs.bota_driver.rokubimini_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_generation
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
