{
  catkin,
  eigen_conversions,
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
  name = "moveit_resources_prbt_ikfast_manipulator_plugin";
  pkgFinal = final.noetic.moveit_resources_prbt_ikfast_manipulator_plugin;
  src = srcs.moveit_resources.moveit_resources_prbt_ikfast_manipulator_plugin;

  colconBuildDepends = [
    catkin
    eigen_conversions
    moveit_core
    pluginlib
    roscpp
    tf2_eigen
    tf2_kdl
  ];

  colconRunDepends = [
    eigen_conversions
    moveit_core
    pluginlib
    roscpp
    tf2_kdl
  ];

  colconTestDepends = [
  ];
}
