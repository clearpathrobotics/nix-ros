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
  name = "fuse_graphs";
  pkgFinal = final.noetic.fuse_graphs;
  src = srcs.fuse.fuse_graphs;

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
