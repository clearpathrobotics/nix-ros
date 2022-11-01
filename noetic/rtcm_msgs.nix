{
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rtcm_msgs";
  pkgFinal = final.noetic.rtcm_msgs;
  src = srcs.rtcm_msgs.rtcm_msgs;

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
