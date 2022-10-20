{
  boost,
  catkin,
  ceres-solver,
  eigen,
  fuse_constraints,
  fuse_core,
  fuse_graphs,
  fuse_msgs,
  fuse_publishers,
  fuse_variables,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  pluginlib,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,
  std_srvs,
  tf2,
  tf2_2d,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_models";
  pkgFinal = final.noetic.fuse_models;
  src = srcs.fuse.fuse_models;

  colconBuildDepends = [
    boost
    catkin
    ceres-solver
    eigen
    fuse_constraints
    fuse_core
    fuse_graphs
    fuse_msgs
    fuse_publishers
    fuse_variables
    geometry_msgs
    message_generation
    nav_msgs
    pluginlib
    roscpp
    roslint
    sensor_msgs
    std_srvs
    tf2
    tf2_2d
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    boost
    ceres-solver
    eigen
    fuse_constraints
    fuse_core
    fuse_graphs
    fuse_msgs
    fuse_publishers
    fuse_variables
    geometry_msgs
    message_runtime
    nav_msgs
    pluginlib
    roscpp
    sensor_msgs
    std_srvs
    tf2
    tf2_2d
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rostest
  ];
}
