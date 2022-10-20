{
  catkin,
  ceres-solver,
  fuse_core,
  libsForQt5,
  pluginlib,
  qt5,
  roscpp,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_loss";
  pkgFinal = final.noetic.fuse_loss;
  src = srcs.fuse.fuse_loss;

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
    libsForQt5.qwt
    qt5.qtbase
    roslint
  ];
}
