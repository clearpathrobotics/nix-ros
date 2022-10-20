{
  catkin,
  controller_manager,
  diff_drive_controller,
  hardware_interface,
  joint_state_controller,
  robot_state_publisher,
  roscpp,
  rosparam_shortcuts,
  sensor_msgs,
  transmission_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_control";
  pkgFinal = final.noetic.diffbot_control;
  src = srcs.diffbot.diffbot_control;

  colconBuildDepends = [
    catkin
    controller_manager
    diff_drive_controller
    hardware_interface
    roscpp
    rosparam_shortcuts
    sensor_msgs
    transmission_interface
  ];

  colconRunDepends = [
    controller_manager
    diff_drive_controller
    hardware_interface
    joint_state_controller
    robot_state_publisher
    roscpp
    rosparam_shortcuts
    sensor_msgs
    transmission_interface
  ];

  colconTestDepends = [
  ];
}
