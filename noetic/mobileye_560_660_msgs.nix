{
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mobileye_560_660_msgs";
  pkgFinal = final.noetic.mobileye_560_660_msgs;
  src = srcs.astuff_sensor_msgs.mobileye_560_660_msgs;

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
