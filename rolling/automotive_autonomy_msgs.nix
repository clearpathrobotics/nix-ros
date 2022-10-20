{
  automotive_navigation_msgs,
  automotive_platform_msgs,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "automotive_autonomy_msgs";
  pkgFinal = final.rolling.automotive_autonomy_msgs;
  src = srcs.automotive_autonomy_msgs.automotive_autonomy_msgs;

  colconBuildDepends = [
    ros_environment
  ];

  colconRunDepends = [
    automotive_navigation_msgs
    automotive_platform_msgs
  ];

  colconTestDepends = [
  ];
}
