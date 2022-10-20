{
  catkin,
  control_toolbox,
  controller_manager,
  diagnostic_updater,
  diff_drive_controller,
  diffbot_msgs,
  dynamic_reconfigure,
  hardware_interface,
  roscpp,
  rosparam_shortcuts,
  rosserial,
  sensor_msgs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_base";
  pkgFinal = final.noetic.diffbot_base;
  src = srcs.diffbot.diffbot_base;

  colconBuildDepends = [
    catkin
    control_toolbox
    controller_manager
    diagnostic_updater
    diff_drive_controller
    diffbot_msgs
    dynamic_reconfigure
    hardware_interface
    roscpp
    rosparam_shortcuts
    sensor_msgs
    urdf
  ];

  colconRunDepends = [
    control_toolbox
    controller_manager
    diagnostic_updater
    diff_drive_controller
    diffbot_msgs
    dynamic_reconfigure
    hardware_interface
    roscpp
    rosparam_shortcuts
    rosserial
    sensor_msgs
    urdf
  ];

  colconTestDepends = [
  ];
}
