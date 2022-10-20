{
  catkin,
  ceres-solver,
  eigen,
  fuse_msgs,
  pluginlib,
  rosconsole,
  roscpp,
  roslint,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_core";
  pkgFinal = final.noetic.fuse_core;
  src = srcs.fuse.fuse_core;

  colconBuildDepends = [
    catkin
    ceres-solver
    eigen
    fuse_msgs
    pluginlib
    rosconsole
    roscpp
  ];

  colconRunDepends = [
    ceres-solver
    eigen
    fuse_msgs
    pluginlib
    rosconsole
    roscpp
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
