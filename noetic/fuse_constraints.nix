{
  catkin,
  ceres-solver,
  eigen,
  fuse_core,
  fuse_graphs,
  fuse_variables,
  geometry_msgs,
  pluginlib,
  roscpp,
  roslint,
  rostest,
  suitesparse,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_constraints";
  pkgFinal = final.noetic.fuse_constraints;
  src = srcs.fuse.fuse_constraints;

  colconBuildDepends = [
    catkin
    ceres-solver
    eigen
    fuse_core
    fuse_graphs
    fuse_variables
    geometry_msgs
    pluginlib
    roscpp
    suitesparse
  ];

  colconRunDepends = [
    ceres-solver
    eigen
    fuse_core
    fuse_graphs
    fuse_variables
    geometry_msgs
    pluginlib
    roscpp
    suitesparse
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
