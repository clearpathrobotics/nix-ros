{
  geometry_msgs,
  ros_environment,
  shape_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "derived_object_msgs";
  pkgFinal = final.noetic.derived_object_msgs;
  src = srcs.astuff_sensor_msgs.derived_object_msgs;

  colconBuildDepends = [
    geometry_msgs
    ros_environment
    shape_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    shape_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
