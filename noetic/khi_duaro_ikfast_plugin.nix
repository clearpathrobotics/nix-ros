{
  catkin,
  liblapack,
  moveit_core,
  pluginlib,
  roscpp,
  tf_conversions,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_duaro_ikfast_plugin";
  pkgFinal = final.noetic.khi_duaro_ikfast_plugin;
  src = srcs.khi_robot.khi_duaro_ikfast_plugin;

  colconBuildDepends = [
    catkin
    liblapack
    moveit_core
    pluginlib
    roscpp
    tf_conversions
  ];

  colconRunDepends = [
    liblapack
    moveit_core
    pluginlib
    roscpp
    tf_conversions
  ];

  colconTestDepends = [
  ];
}
