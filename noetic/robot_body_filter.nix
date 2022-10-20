{
  catkin,
  dynamic_reconfigure,
  fcl,
  filters,
  geometric_shapes,
  geometry_msgs,
  laser_geometry,
  message_generation,
  message_runtime,
  moveit_core,
  moveit_ros_perception,
  pcl,
  pcl_conversions,
  pkg-config,
  roscpp,
  rostest,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_eigen,
  tf2_ros,
  tf2_sensor_msgs,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_body_filter";
  pkgFinal = final.noetic.robot_body_filter;
  src = srcs.robot_body_filter.robot_body_filter;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    fcl
    filters
    geometric_shapes
    geometry_msgs
    laser_geometry
    message_generation
    moveit_core
    moveit_ros_perception
    pcl
    pcl_conversions
    pkg-config
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_eigen
    tf2_ros
    tf2_sensor_msgs
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    fcl
    filters
    geometric_shapes
    geometry_msgs
    laser_geometry
    message_runtime
    moveit_core
    moveit_ros_perception
    pcl
    pcl_conversions
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
