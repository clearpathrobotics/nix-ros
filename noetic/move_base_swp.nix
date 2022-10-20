{
  actionlib,
  actionlib_msgs,
  base_local_planner,
  catkin,
  clear_costmap_recovery,
  cmake_modules,
  costmap_2d,
  dynamic_reconfigure,
  geometry_msgs,
  message_generation,
  message_runtime,
  move_base_msgs,
  nav_core,
  nav_msgs,
  navfn,
  pluginlib,
  roscpp,
  rospy,
  rotate_recovery,
  std_srvs,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "move_base_swp";
  pkgFinal = final.noetic.move_base_swp;
  src = srcs.move_base_swp.move_base_swp;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    base_local_planner
    catkin
    clear_costmap_recovery
    cmake_modules
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    message_generation
    move_base_msgs
    nav_core
    nav_msgs
    navfn
    pluginlib
    roscpp
    rospy
    rotate_recovery
    std_srvs
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    base_local_planner
    clear_costmap_recovery
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    message_runtime
    move_base_msgs
    nav_core
    nav_msgs
    navfn
    pluginlib
    roscpp
    rospy
    rotate_recovery
    std_srvs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
