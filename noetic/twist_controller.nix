{
  cartesian_interface,
  catkin,
  controller_interface,
  dynamic_reconfigure,
  geometry_msgs,
  hardware_interface,
  realtime_tools,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "twist_controller";
  pkgFinal = final.noetic.twist_controller;
  src = srcs.ros_controllers_cartesian.twist_controller;

  colconBuildDepends = [
    cartesian_interface
    catkin
    controller_interface
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    realtime_tools
    roscpp
  ];

  colconRunDepends = [
    cartesian_interface
    controller_interface
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    realtime_tools
    roscpp
  ];

  colconTestDepends = [
  ];
}
