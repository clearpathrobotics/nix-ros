{
  catkin,
  controller_interface,
  controller_manager,
  hardware_interface,
  pluginlib,
  realtime_tools,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_sensor_controller";
  pkgFinal = final.noetic.imu_sensor_controller;
  src = srcs.ros_controllers.imu_sensor_controller;

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
    controller_manager
    hardware_interface
    realtime_tools
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
