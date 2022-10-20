{
  catkin,
  eigen_conversions,
  liblapack,
  moveit_core,
  pluginlib,
  roscpp,
  tf2_eigen,
  tf2_kdl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pincher_arm_ikfast_plugin";
  pkgFinal = final.noetic.pincher_arm_ikfast_plugin;
  src = srcs.pincher_arm.pincher_arm_ikfast_plugin;

  colconBuildDepends = [
    catkin
    eigen_conversions
    liblapack
    moveit_core
    pluginlib
    roscpp
    tf2_eigen
    tf2_kdl
  ];

  colconRunDepends = [
    eigen_conversions
    liblapack
    moveit_core
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
