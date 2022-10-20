{
  catkin,
  diagnostic_updater,
  fuse_constraints,
  fuse_core,
  fuse_graphs,
  fuse_models,
  fuse_variables,
  geometry_msgs,
  nav_msgs,
  pluginlib,
  roscpp,
  roslint,
  rostest,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_optimizers";
  pkgFinal = final.noetic.fuse_optimizers;
  src = srcs.fuse.fuse_optimizers;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    fuse_constraints
    fuse_core
    fuse_graphs
    fuse_variables
    pluginlib
    roscpp
    std_srvs
  ];

  colconRunDepends = [
    diagnostic_updater
    fuse_constraints
    fuse_core
    fuse_graphs
    fuse_variables
    pluginlib
    roscpp
    std_srvs
  ];

  colconTestDepends = [
    fuse_models
    geometry_msgs
    nav_msgs
    roslint
    rostest
  ];
}
