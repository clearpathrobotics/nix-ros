{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fiducial_msgs";
  pkgFinal = final.noetic.fiducial_msgs;
  src = srcs.fiducials.fiducial_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
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
