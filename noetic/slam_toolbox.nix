{
  catkin,
  ceres-solver,
  cmake_modules,
  eigen,
  gtest,
  interactive_markers,
  liblapack,
  map_server,
  message_filters,
  message_runtime,
  nav_msgs,
  pluginlib,
  qt5,
  rosconsole,
  roscpp,
  sensor_msgs,
  slam_toolbox_msgs,
  sparse_bundle_adjustment,
  std_msgs,
  std_srvs,
  suitesparse,
  tbb,
  tf,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slam_toolbox";
  pkgFinal = final.noetic.slam_toolbox;
  src = srcs.slam_toolbox.slam_toolbox;

  colconBuildDepends = [
    catkin
    ceres-solver
    cmake_modules
    eigen
    interactive_markers
    liblapack
    map_server
    message_filters
    nav_msgs
    pluginlib
    qt5.qtbase
    rosconsole
    roscpp
    sensor_msgs
    slam_toolbox_msgs
    sparse_bundle_adjustment
    std_msgs
    std_srvs
    suitesparse
    tbb
    tf
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    ceres-solver
    eigen
    interactive_markers
    liblapack
    map_server
    message_filters
    message_runtime
    nav_msgs
    pluginlib
    qt5.qtbase
    rosconsole
    roscpp
    sensor_msgs
    slam_toolbox_msgs
    sparse_bundle_adjustment
    std_msgs
    std_srvs
    suitesparse
    tbb
    tf
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    gtest
  ];
}
