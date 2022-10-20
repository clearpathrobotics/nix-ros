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
  name = "fetch_ikfast_plugin";
  pkgFinal = final.noetic.fetch_ikfast_plugin;
  src = srcs.fetch_ros.fetch_ikfast_plugin;

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
