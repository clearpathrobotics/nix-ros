{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_msgs";
  pkgFinal = final.noetic.mesh_msgs;
  src = srcs.mesh_tools.mesh_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
