{
  actionlib,
  catkin,
  combined_robot_hw,
  control_msgs,
  controller_manager,
  qb_device_hardware_interface,
  qb_device_utils,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device_control";
  pkgFinal = final.noetic.qb_device_control;
  src = srcs.qb_device.qb_device_control;

  colconBuildDepends = [
    actionlib
    catkin
    combined_robot_hw
    control_msgs
    controller_manager
    qb_device_hardware_interface
    qb_device_utils
    roscpp
  ];

  colconRunDepends = [
    actionlib
    combined_robot_hw
    control_msgs
    controller_manager
    qb_device_hardware_interface
    qb_device_utils
    roscpp
  ];

  colconTestDepends = [
  ];
}
