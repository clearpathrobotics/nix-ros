{
  catkin,
  costmap_2d,
  dynamic_reconfigure,
  geometry_msgs,
  laser_geometry,
  message_filters,
  message_generation,
  openexr,
  openvdb,
  pcl_conversions,
  pcl_ros,
  pluginlib,
  roscpp,
  sensor_msgs,
  std_msgs,
  tbb,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "spatio_temporal_voxel_layer";
  pkgFinal = final.noetic.spatio_temporal_voxel_layer;
  src = srcs.spatio_temporal_voxel_layer.spatio_temporal_voxel_layer;

  colconBuildDepends = [
    catkin
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    laser_geometry
    message_filters
    message_generation
    openexr
    openvdb
    pcl_conversions
    pcl_ros
    pluginlib
    roscpp
    sensor_msgs
    std_msgs
    tbb
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    laser_geometry
    message_filters
    openexr
    openvdb
    pcl_conversions
    pcl_ros
    pluginlib
    roscpp
    sensor_msgs
    std_msgs
    tbb
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
