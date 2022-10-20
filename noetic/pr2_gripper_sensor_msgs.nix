{
  actionlib,
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_gripper_sensor_msgs";
  pkgFinal = final.noetic.pr2_gripper_sensor_msgs;
  src = srcs.pr2_gripper_sensor.pr2_gripper_sensor_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    message_runtime
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
