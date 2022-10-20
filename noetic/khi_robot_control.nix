{
  catkin,
  controller_manager,
  diagnostic_updater,
  hardware_interface,
  joint_limits_interface,
  joint_state_controller,
  joint_trajectory_controller,
  khi_robot_msgs,
  position_controllers,
  realtime_tools,
  rostest,
  trajectory_msgs,
  transmission_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_robot_control";
  pkgFinal = final.noetic.khi_robot_control;
  src = srcs.khi_robot.khi_robot_control;

  colconBuildDepends = [
    catkin
    controller_manager
    diagnostic_updater
    hardware_interface
    joint_limits_interface
    khi_robot_msgs
    realtime_tools
    trajectory_msgs
    transmission_interface
  ];

  colconRunDepends = [
    controller_manager
    diagnostic_updater
    hardware_interface
    joint_limits_interface
    joint_state_controller
    joint_trajectory_controller
    khi_robot_msgs
    position_controllers
    trajectory_msgs
    transmission_interface
  ];

  colconTestDepends = [
    rostest
  ];
}
