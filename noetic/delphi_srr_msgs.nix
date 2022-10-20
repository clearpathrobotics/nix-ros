{
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "delphi_srr_msgs";
  pkgFinal = final.noetic.delphi_srr_msgs;
  src = srcs.astuff_sensor_msgs.delphi_srr_msgs;

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
