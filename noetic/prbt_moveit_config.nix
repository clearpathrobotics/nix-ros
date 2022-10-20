{
  catkin,
  joint_state_publisher,
  moveit_core,
  moveit_fake_controller_manager,
  moveit_kinematics,
  moveit_planners_ompl,
  moveit_ros_move_group,
  moveit_ros_planning,
  moveit_ros_visualization,
  moveit_simple_controller_manager,
  pluginlib,
  prbt_hardware_support,
  prbt_ikfast_manipulator_plugin,
  prbt_support,
  robot_state_publisher,
  roscpp,
  roslaunch,
  rostest,
  rosunit,
  rviz,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "prbt_moveit_config";
  pkgFinal = final.noetic.prbt_moveit_config;
  src = srcs.pilz_robots.prbt_moveit_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_state_publisher
    moveit_fake_controller_manager
    moveit_kinematics
    moveit_planners_ompl
    moveit_ros_move_group
    moveit_ros_visualization
    moveit_simple_controller_manager
    prbt_hardware_support
    prbt_ikfast_manipulator_plugin
    prbt_support
    robot_state_publisher
    rviz
    xacro
  ];

  colconTestDepends = [
    moveit_core
    moveit_ros_planning
    pluginlib
    roscpp
    roslaunch
    rostest
    rosunit
  ];
}
