{
  catkin,
  controller_manager,
  diagnostic_updater,
  diff_drive_controller,
  dynamic_reconfigure,
  geometry_msgs,
  hardware_interface,
  joint_state_controller,
  message_generation,
  message_runtime,
  nav_msgs,
  python3Packages,
  roscpp,
  rostest,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ubiquity_motor";
  pkgFinal = final.noetic.ubiquity_motor;
  src = srcs.ubiquity_motor.ubiquity_motor;

  colconBuildDepends = [
    catkin
    controller_manager
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    message_generation
    nav_msgs
    roscpp
    std_msgs
    tf
  ];

  colconRunDepends = [
    controller_manager
    diagnostic_updater
    diff_drive_controller
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    joint_state_controller
    message_runtime
    nav_msgs
    python3Packages.requests
    std_msgs
    tf
  ];

  colconTestDepends = [
    rostest
  ];
}
