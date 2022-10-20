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
  name = "tof_radar_controller";
  pkgFinal = final.noetic.tof_radar_controller;
  src = srcs.rm_controllers.tof_radar_controller;

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
