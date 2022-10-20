{
  actionlib,
  catkin,
  dynamic_reconfigure,
  eigen,
  message_filters,
  moveit_core,
  moveit_msgs,
  moveit_resources_panda_moveit_config,
  moveit_ros_occupancy_map_monitor,
  pluginlib,
  rosconsole,
  roscpp,
  rostest,
  srdfdom,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_msgs,
  tf2_ros,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_planning";
  pkgFinal = final.noetic.moveit_ros_planning;
  src = srcs.moveit.moveit_ros_planning;

  colconBuildDepends = [
    actionlib
    catkin
    dynamic_reconfigure
    eigen
    message_filters
    moveit_core
    moveit_msgs
    moveit_ros_occupancy_map_monitor
    pluginlib
    rosconsole
    roscpp
    srdfdom
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
    urdf
  ];

  colconRunDepends = [
    actionlib
    dynamic_reconfigure
    message_filters
    moveit_core
    moveit_msgs
    moveit_ros_occupancy_map_monitor
    pluginlib
    rosconsole
    roscpp
    srdfdom
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
    urdf
  ];

  colconTestDepends = [
    moveit_resources_panda_moveit_config
    rostest
  ];
}
