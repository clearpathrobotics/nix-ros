{
  actionlib,
  angles,
  catkin,
  control_msgs,
  diagnostic_updater,
  message_generation,
  message_runtime,
  rosserial_python,
  sensor_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_hand_bridge";
  pkgFinal = final.noetic.cob_hand_bridge;
  src = srcs.cob_hand.cob_hand_bridge;

  colconBuildDepends = [
    actionlib
    angles
    catkin
    control_msgs
    diagnostic_updater
    message_generation
    sensor_msgs
    std_srvs
  ];

  colconRunDepends = [
    actionlib
    angles
    control_msgs
    diagnostic_updater
    message_runtime
    rosserial_python
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
