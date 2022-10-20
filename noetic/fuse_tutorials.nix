{
  catkin,
  fuse_constraints,
  fuse_core,
  fuse_models,
  fuse_optimizers,
  fuse_publishers,
  fuse_variables,
  nav_msgs,
  roscpp,
  roslint,
  rviz,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_tutorials";
  pkgFinal = final.noetic.fuse_tutorials;
  src = srcs.fuse.fuse_tutorials;

  colconBuildDepends = [
    catkin
    fuse_constraints
    fuse_core
    fuse_models
    fuse_variables
    nav_msgs
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    fuse_constraints
    fuse_core
    fuse_models
    fuse_optimizers
    fuse_publishers
    fuse_variables
    nav_msgs
    roscpp
    rviz
    sensor_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
