{
  catkin,
  controller_interface,
  pluginlib,
  realtime_tools,
  rm_common,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gpio_controller";
  pkgFinal = final.noetic.gpio_controller;
  src = srcs.rm_controllers.gpio_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    pluginlib
    realtime_tools
    rm_common
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    pluginlib
    realtime_tools
    rm_common
    roscpp
  ];

  colconTestDepends = [
  ];
}
