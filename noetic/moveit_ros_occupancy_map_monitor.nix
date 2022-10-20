{
  catkin,
  eigen,
  geometric_shapes,
  moveit_core,
  moveit_msgs,
  pluginlib,
  rosunit,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_occupancy_map_monitor";
  pkgFinal = final.noetic.moveit_ros_occupancy_map_monitor;
  src = srcs.moveit.moveit_ros_occupancy_map_monitor;

  colconBuildDepends = [
    catkin
    eigen
    geometric_shapes
    moveit_core
    moveit_msgs
    pluginlib
    tf2_ros
  ];

  colconRunDepends = [
    geometric_shapes
    moveit_core
    moveit_msgs
    pluginlib
    tf2_ros
  ];

  colconTestDepends = [
    rosunit
  ];
}
