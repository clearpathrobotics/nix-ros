{
  angles,
  catkin,
  cmake_modules,
  costmap_2d,
  dynamic_reconfigure,
  eigen,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_core,
  nav_msgs,
  pluginlib,
  rosconsole,
  roscpp,
  rospy,
  rosunit,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,
  voxel_grid,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "base_local_planner";
  pkgFinal = final.noetic.base_local_planner;
  src = srcs.navigation.base_local_planner;

  colconBuildDepends = [
    angles
    catkin
    cmake_modules
    costmap_2d
    dynamic_reconfigure
    eigen
    geometry_msgs
    message_generation
    nav_core
    nav_msgs
    pluginlib
    rosconsole
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
    voxel_grid
  ];

  colconRunDepends = [
    angles
    costmap_2d
    dynamic_reconfigure
    eigen
    geometry_msgs
    message_runtime
    nav_core
    nav_msgs
    pluginlib
    rosconsole
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
    visualization_msgs
    voxel_grid
  ];

  colconTestDepends = [
    rosunit
  ];
}
