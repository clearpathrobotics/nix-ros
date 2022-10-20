{
  actionlib,
  catkin,
  control_msgs,
  control_toolbox,
  controller_interface,
  hardware_interface,
  pluginlib,
  realtime_tools,
  roscpp,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gripper_action_controller";
  pkgFinal = final.noetic.gripper_action_controller;
  src = srcs.ros_controllers.gripper_action_controller;

  colconBuildDepends = [
    actionlib
    catkin
    control_msgs
    control_toolbox
    controller_interface
    hardware_interface
    pluginlib
    realtime_tools
    roscpp
    urdf
  ];

  colconRunDepends = [
    actionlib
    control_msgs
    control_toolbox
    controller_interface
    hardware_interface
    realtime_tools
    roscpp
    urdf
  ];

  colconTestDepends = [
  ];
}
