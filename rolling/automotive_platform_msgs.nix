{
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "automotive_platform_msgs";
  pkgFinal = final.rolling.automotive_platform_msgs;
  src = srcs.automotive_autonomy_msgs.automotive_platform_msgs;

  colconBuildDepends = [
    ros_environment
    std_msgs
  ];

  colconRunDepends = [
    std_msgs
  ];

  colconTestDepends = [
  ];
}
