{
  catkin,
  controller_manager,
  hardware_interface,
  ignition,
  pluginlib,
  python3Packages,
  roscpp,
  transmission_interface,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ign_ros_control";
  pkgFinal = final.noetic.ign_ros_control;
  src = srcs.ign_ros_control.ign_ros_control;

  colconBuildDepends = [
    catkin
    controller_manager
    hardware_interface
    ignition.msgs5
    ignition.transport8
    pluginlib
    python3Packages.setuptools
    roscpp
    transmission_interface
    urdf
  ];

  colconRunDepends = [
    controller_manager
    hardware_interface
    ignition.msgs5
    ignition.transport8
    pluginlib
    roscpp
    transmission_interface
    urdf
  ];

  colconTestDepends = [
  ];
}
