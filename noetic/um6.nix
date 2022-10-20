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
  name = "um6";
  pkgFinal = final.noetic.um6;
  src = srcs.um6.um6;

  colconBuildDepends = [
    catkin
    message_generation
    roscpp
    roslint
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
  ];
}
