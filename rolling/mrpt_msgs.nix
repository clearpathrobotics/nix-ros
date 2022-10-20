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
  name = "mrpt_msgs";
  pkgFinal = final.rolling.mrpt_msgs;
  src = srcs.mrpt_msgs.mrpt_msgs;

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
