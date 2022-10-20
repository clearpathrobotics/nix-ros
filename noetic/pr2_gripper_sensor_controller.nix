{
  actionlib_msgs,
  catkin,
  pluginlib,
  pr2_controller_interface,
  pr2_controller_manager,
  pr2_controllers_msgs,
  pr2_gripper_sensor_msgs,
  pr2_mechanism_model,
  realtime_tools,
  roscpp,
  roslib,
  rosrt,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_gripper_sensor_controller";
  pkgFinal = final.noetic.pr2_gripper_sensor_controller;
  src = srcs.pr2_gripper_sensor.pr2_gripper_sensor_controller;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    pluginlib
    pr2_controller_interface
    pr2_controller_manager
    pr2_controllers_msgs
    pr2_gripper_sensor_msgs
    pr2_mechanism_model
    realtime_tools
    roscpp
    roslib
    rosrt
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    actionlib_msgs
    pluginlib
    pr2_controller_interface
    pr2_controller_manager
    pr2_controllers_msgs
    pr2_gripper_sensor_msgs
    pr2_mechanism_model
    realtime_tools
    roscpp
    roslib
    rosrt
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
