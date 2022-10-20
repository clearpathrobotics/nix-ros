{
  catkin,
  eigen,
  fuse_constraints,
  fuse_core,
  fuse_msgs,
  fuse_variables,
  geometry_msgs,
  qt5,
  roslint,
  rviz,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_viz";
  pkgFinal = final.noetic.fuse_viz;
  src = srcs.fuse.fuse_viz;

  colconBuildDepends = [
    catkin
    eigen
    fuse_constraints
    fuse_core
    fuse_msgs
    fuse_variables
    geometry_msgs
    qt5.qtbase
    rviz
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    eigen
    fuse_constraints
    fuse_core
    fuse_msgs
    fuse_variables
    geometry_msgs
    rviz
    tf2_geometry_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
