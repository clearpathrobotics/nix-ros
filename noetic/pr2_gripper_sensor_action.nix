{
  actionlib,
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  pr2_controllers_msgs,
  pr2_gripper_sensor_controller,
  pr2_gripper_sensor_msgs,
  pr2_machine,
  pr2_mechanism_controllers,
  pr2_mechanism_model,
  robot_mechanism_controllers,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_gripper_sensor_action";
  pkgFinal = final.noetic.pr2_gripper_sensor_action;
  src = srcs.pr2_gripper_sensor.pr2_gripper_sensor_action;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
    pr2_controllers_msgs
    pr2_gripper_sensor_controller
    pr2_gripper_sensor_msgs
    pr2_machine
    pr2_mechanism_controllers
    pr2_mechanism_model
    robot_mechanism_controllers
    roscpp
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    message_runtime
    pr2_controllers_msgs
    pr2_gripper_sensor_controller
    pr2_gripper_sensor_msgs
    pr2_machine
    pr2_mechanism_controllers
    pr2_mechanism_model
    robot_mechanism_controllers
    roscpp
  ];

  colconTestDepends = [
  ];
}
