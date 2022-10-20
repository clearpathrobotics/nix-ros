{
  catkin,
  pincher_arm_bringup,
  pincher_arm_description,
  pincher_arm_ikfast_plugin,
  pincher_arm_moveit_config,
  pincher_arm_moveit_demos,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pincher_arm";
  pkgFinal = final.noetic.pincher_arm;
  src = srcs.pincher_arm.pincher_arm;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pincher_arm_bringup
    pincher_arm_description
    pincher_arm_ikfast_plugin
    pincher_arm_moveit_config
    pincher_arm_moveit_demos
  ];

  colconTestDepends = [
  ];
}
