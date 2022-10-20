{
  geometry_msgs,
  ros_environment,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lgsvl_msgs";
  pkgFinal = final.noetic.lgsvl_msgs;
  src = srcs.lgsvl_msgs.lgsvl_msgs;

  colconBuildDepends = [
    geometry_msgs
    ros_environment
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
