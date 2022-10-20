{
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kartech_linear_actuator_msgs";
  pkgFinal = final.noetic.kartech_linear_actuator_msgs;
  src = srcs.astuff_sensor_msgs.kartech_linear_actuator_msgs;

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
