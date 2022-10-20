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
  name = "octomap_pa_msgs";
  pkgFinal = final.noetic.octomap_pa_msgs;
  src = srcs.octomap_pa.octomap_pa_msgs;

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
