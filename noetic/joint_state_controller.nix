{
  catkin,
  controller_interface,
  hardware_interface,
  pluginlib,
  realtime_tools,
  roscpp,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_state_controller";
  pkgFinal = final.noetic.joint_state_controller;
  src = srcs.ros_controllers.joint_state_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    hardware_interface
    pluginlib
    realtime_tools
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    controller_interface
    hardware_interface
    realtime_tools
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
