{
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "neobotix_usboard_msgs";
  pkgFinal = final.noetic.neobotix_usboard_msgs;
  src = srcs.astuff_sensor_msgs.neobotix_usboard_msgs;

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
