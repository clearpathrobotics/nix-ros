{
  catkin,
  controller_interface,
  controller_manager,
  geometry_msgs,
  hardware_interface,
  pluginlib,
  realtime_tools,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "force_torque_sensor_controller";
  pkgFinal = final.noetic.force_torque_sensor_controller;
  src = srcs.ros_controllers.force_torque_sensor_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    geometry_msgs
    hardware_interface
    pluginlib
    realtime_tools
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    controller_manager
    geometry_msgs
    hardware_interface
    realtime_tools
    roscpp
  ];

  colconTestDepends = [
  ];
}
