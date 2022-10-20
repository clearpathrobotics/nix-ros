{
  catkin,
  cmake_modules,
  code_coverage,
  joint_limits_interface,
  moveit_core,
  moveit_msgs,
  moveit_resources_panda_moveit_config,
  moveit_resources_prbt_moveit_config,
  moveit_resources_prbt_pg70_support,
  moveit_resources_prbt_support,
  moveit_ros_move_group,
  moveit_ros_planning,
  moveit_ros_planning_interface,
  pilz_industrial_motion_planner_testutils,
  pluginlib,
  roscpp,
  rostest,
  rosunit,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_kdl,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_industrial_motion_planner";
  pkgFinal = final.noetic.pilz_industrial_motion_planner;
  src = srcs.moveit.pilz_industrial_motion_planner;

  colconBuildDepends = [
    catkin
    joint_limits_interface
    moveit_core
    moveit_msgs
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_planning_interface
    pluginlib
    roscpp
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_kdl
    tf2_ros
  ];

  colconRunDepends = [
    joint_limits_interface
    moveit_core
    moveit_msgs
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_planning_interface
    pluginlib
    roscpp
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_kdl
    tf2_ros
  ];

  colconTestDepends = [
    cmake_modules
    code_coverage
    moveit_resources_panda_moveit_config
    moveit_resources_prbt_moveit_config
    moveit_resources_prbt_pg70_support
    moveit_resources_prbt_support
    pilz_industrial_motion_planner_testutils
    rostest
    rosunit
  ];
}
