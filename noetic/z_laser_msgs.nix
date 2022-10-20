{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "z_laser_msgs";
  pkgFinal = final.noetic.z_laser_msgs;
  src = srcs.z_laser_projector.z_laser_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
