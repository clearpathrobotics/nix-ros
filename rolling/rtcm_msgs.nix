{
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rtcm_msgs";
  pkgFinal = final.rolling.rtcm_msgs;
  src = srcs.rtcm_msgs.rtcm_msgs;

  colconBuildDepends = [
    std_msgs
  ];

  colconRunDepends = [
    std_msgs
  ];

  colconTestDepends = [
  ];
}
