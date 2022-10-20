{
  catkin,
  lvr2,
  mesh_msgs,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_msgs_conversions";
  pkgFinal = final.noetic.mesh_msgs_conversions;
  src = srcs.mesh_tools.mesh_msgs_conversions;

  colconBuildDepends = [
    catkin
    lvr2
    mesh_msgs
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    lvr2
    mesh_msgs
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
