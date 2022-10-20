{
  catkin,
  geometry_msgs,
  message_runtime,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "p2os_teleop";
  pkgFinal = final.noetic.p2os_teleop;
  src = srcs.p2os.p2os_teleop;

  colconBuildDepends = [
    catkin
    geometry_msgs
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
