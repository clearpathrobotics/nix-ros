{
  catkin,
  message_generation,
  message_runtime,
  roscpp,
  roslint,
  sensor_msgs,
  serial,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "um7";
  pkgFinal = final.noetic.um7;
  src = srcs.um7.um7;

  colconBuildDepends = [
    catkin
    message_generation
    roscpp
    sensor_msgs
    serial
  ];

  colconRunDepends = [
    message_runtime
    roscpp
    sensor_msgs
    serial
  ];

  colconTestDepends = [
    roslint
  ];
}
