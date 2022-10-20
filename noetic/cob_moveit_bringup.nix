{
  catkin,
  cob_hardware_config,
  cob_moveit_config,
  joint_state_publisher,
  moveit_planners_ompl,
  moveit_plugins,
  moveit_ros_move_group,
  moveit_ros_perception,
  moveit_ros_visualization,
  moveit_setup_assistant,
  robot_state_publisher,
  rviz,
  tf,
  warehouse_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_moveit_bringup";
  pkgFinal = final.noetic.cob_moveit_bringup;
  src = srcs.cob_manipulation.cob_moveit_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_hardware_config
    cob_moveit_config
    joint_state_publisher
    moveit_planners_ompl
    moveit_plugins
    moveit_ros_move_group
    moveit_ros_perception
    moveit_ros_visualization
    moveit_setup_assistant
    robot_state_publisher
    rviz
    tf
    warehouse_ros
  ];

  colconTestDepends = [
  ];
}
