{
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "delphi_esr_msgs";
  pkgFinal = final.noetic.delphi_esr_msgs;
  src = srcs.astuff_sensor_msgs.delphi_esr_msgs;

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
