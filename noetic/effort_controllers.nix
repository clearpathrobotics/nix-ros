{
  angles,
  catkin,
  control_msgs,
  control_toolbox,
  controller_interface,
  controller_manager,
  forward_command_controller,
  hardware_interface,
  joint_state_controller,
  pluginlib,
  realtime_tools,
  robot_state_publisher,
  roscpp,
  rosgraph_msgs,
  rostest,
  sensor_msgs,
  std_msgs,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "effort_controllers";
  pkgFinal = final.noetic.effort_controllers;
  src = srcs.ros_controllers.effort_controllers;

  colconBuildDepends = [
    angles
    catkin
    control_msgs
    control_toolbox
    controller_interface
    forward_command_controller
    hardware_interface
    pluginlib
    realtime_tools
    roscpp
    std_msgs
    urdf
  ];

  colconRunDepends = [
    control_msgs
    control_toolbox
    controller_interface
    forward_command_controller
    hardware_interface
    realtime_tools
    roscpp
    std_msgs
    urdf
  ];

  colconTestDepends = [
    controller_manager
    joint_state_controller
    robot_state_publisher
    rosgraph_msgs
    rostest
    sensor_msgs
    xacro
  ];
}
