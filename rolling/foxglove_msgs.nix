{
  geometry_msgs,
  ros_environment,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "foxglove_msgs";
  pkgFinal = final.rolling.foxglove_msgs;
  src = srcs.foxglove_msgs.foxglove_msgs;

  colconBuildDepends = [
    geometry_msgs
    ros_environment
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
