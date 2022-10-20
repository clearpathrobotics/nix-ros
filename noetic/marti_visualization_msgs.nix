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
  name = "marti_visualization_msgs";
  pkgFinal = final.noetic.marti_visualization_msgs;
  src = srcs.marti_messages.marti_visualization_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
