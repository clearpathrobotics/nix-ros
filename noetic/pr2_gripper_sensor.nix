{
  catkin,
  pr2_gripper_sensor_action,
  pr2_gripper_sensor_controller,
  pr2_gripper_sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_gripper_sensor";
  pkgFinal = final.noetic.pr2_gripper_sensor;
  src = srcs.pr2_gripper_sensor.pr2_gripper_sensor;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pr2_gripper_sensor_action
    pr2_gripper_sensor_controller
    pr2_gripper_sensor_msgs
  ];

  colconTestDepends = [
  ];
}
