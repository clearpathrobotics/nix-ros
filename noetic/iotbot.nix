{
  catkin,
  geometry_msgs,
  joy,
  roscpp,
  sensor_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "iotbot";
  pkgFinal = final.noetic.iotbot;
  src = srcs.iotbot.iotbot;

  colconBuildDepends = [
    catkin
    geometry_msgs
    joy
    roscpp
    sensor_msgs
    std_srvs
  ];

  colconRunDepends = [
    geometry_msgs
    joy
    roscpp
    sensor_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
