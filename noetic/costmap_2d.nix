{
  catkin,
  cmake_modules,
  dynamic_reconfigure,
  eigen,
  geometry_msgs,
  laser_geometry,
  map_msgs,
  map_server,
  message_filters,
  message_generation,
  message_runtime,
  nav_msgs,
  pluginlib,
  rosbag,
  rosconsole,
  roscpp,
  rostest,
  rosunit,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  tf2_sensor_msgs,
  visualization_msgs,
  voxel_grid,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "costmap_2d";
  pkgFinal = final.noetic.costmap_2d;
  src = srcs.navigation.costmap_2d;

  colconBuildDepends = [
    catkin
    cmake_modules
    dynamic_reconfigure
    eigen
    geometry_msgs
    laser_geometry
    map_msgs
    message_filters
    message_generation
    nav_msgs
    pluginlib
    roscpp
    rostest
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    tf2_sensor_msgs
    visualization_msgs
    voxel_grid
  ];

  colconRunDepends = [
    dynamic_reconfigure
    eigen
    geometry_msgs
    laser_geometry
    map_msgs
    message_filters
    message_runtime
    nav_msgs
    pluginlib
    rosconsole
    roscpp
    rostest
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
    visualization_msgs
    voxel_grid
  ];

  colconTestDepends = [
    map_server
    rosbag
    rostest
    rosunit
  ];
}
