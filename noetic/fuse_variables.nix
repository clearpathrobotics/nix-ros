{
  catkin,
  ceres-solver,
  fuse_core,
  pluginlib,
  roscpp,
  roslint,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_variables";
  pkgFinal = final.noetic.fuse_variables;
  src = srcs.fuse.fuse_variables;

  colconBuildDepends = [
    catkin
    ceres-solver
    fuse_core
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    ceres-solver
    fuse_core
    pluginlib
    roscpp
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
