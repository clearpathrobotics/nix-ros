{
  catkin,
  fuse_constraints,
  fuse_core,
  fuse_graphs,
  fuse_variables,
  geometry_msgs,
  nav_msgs,
  pluginlib,
  roscpp,
  roslint,
  rostest,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_publishers";
  pkgFinal = final.noetic.fuse_publishers;
  src = srcs.fuse.fuse_publishers;

  colconBuildDepends = [
    catkin
    fuse_core
    fuse_variables
    geometry_msgs
    nav_msgs
    pluginlib
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    fuse_core
    fuse_variables
    geometry_msgs
    nav_msgs
    pluginlib
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    fuse_constraints
    fuse_graphs
    roslint
    rostest
  ];
}
