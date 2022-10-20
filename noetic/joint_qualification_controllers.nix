{
  catkin,
  control_toolbox,
  message_generation,
  message_runtime,
  pluginlib,
  pr2_controller_interface,
  pr2_hardware_interface,
  pr2_mechanism_model,
  realtime_tools,
  robot_mechanism_controllers,
  roscpp,
  sensor_msgs,
  std_msgs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_qualification_controllers";
  pkgFinal = final.noetic.joint_qualification_controllers;
  src = srcs.pr2_self_test.joint_qualification_controllers;

  colconBuildDepends = [
    catkin
    control_toolbox
    message_generation
    pluginlib
    pr2_controller_interface
    pr2_hardware_interface
    pr2_mechanism_model
    realtime_tools
    robot_mechanism_controllers
    roscpp
    sensor_msgs
    std_msgs
    urdf
  ];

  colconRunDepends = [
    control_toolbox
    message_runtime
    pluginlib
    pr2_controller_interface
    pr2_hardware_interface
    pr2_mechanism_model
    realtime_tools
    robot_mechanism_controllers
    roscpp
    sensor_msgs
    std_msgs
    urdf
  ];

  colconTestDepends = [
  ];
}
