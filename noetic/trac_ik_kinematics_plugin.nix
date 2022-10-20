{
  catkin,
  moveit_core,
  nlopt,
  pluginlib,
  roscpp,
  tf_conversions,
  trac_ik_lib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "trac_ik_kinematics_plugin";
  pkgFinal = final.noetic.trac_ik_kinematics_plugin;
  src = srcs.trac_ik.trac_ik_kinematics_plugin;

  colconBuildDepends = [
    catkin
    moveit_core
    nlopt
    pluginlib
    roscpp
    tf_conversions
    trac_ik_lib
  ];

  colconRunDepends = [
    moveit_core
    nlopt
    pluginlib
    roscpp
    tf_conversions
    trac_ik_lib
  ];

  colconTestDepends = [
  ];
}
