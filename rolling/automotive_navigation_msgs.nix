{
  geometry_msgs,
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "automotive_navigation_msgs";
  pkgFinal = final.rolling.automotive_navigation_msgs;
  src = srcs.automotive_autonomy_msgs.automotive_navigation_msgs;

  colconBuildDepends = [
    geometry_msgs
    ros_environment
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
