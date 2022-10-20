{
  catkin,
  cmake_modules,
  costmap_2d,
  dynamic_reconfigure,
  geometry_msgs,
  laser_geometry,
  map_msgs,
  message_filters,
  message_generation,
  message_runtime,
  nav_msgs,
  pluginlib,
  rosconsole,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,
  visualization_msgs,
  voxel_grid,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nonpersistent_voxel_layer";
  pkgFinal = final.noetic.nonpersistent_voxel_layer;
  src = srcs.nonpersistent_voxel_layer.nonpersistent_voxel_layer;

  colconBuildDepends = [
    catkin
    cmake_modules
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    laser_geometry
    map_msgs
    message_filters
    message_generation
    nav_msgs
    pluginlib
    roscpp
    sensor_msgs
    std_msgs
    tf
    visualization_msgs
    voxel_grid
  ];

  colconRunDepends = [
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    laser_geometry
    map_msgs
    message_filters
    message_runtime
    nav_msgs
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
    std_msgs
    tf
    visualization_msgs
    voxel_grid
  ];

  colconTestDepends = [
  ];
}
