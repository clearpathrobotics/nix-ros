{
  catkin,
  controller_interface,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mimic_joint_controller";
  pkgFinal = final.noetic.mimic_joint_controller;
  src = srcs.rm_controllers.mimic_joint_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
