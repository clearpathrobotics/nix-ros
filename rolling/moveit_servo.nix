{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  control_msgs,
  control_toolbox,
  controller_manager,
  geometry_msgs,
  gripper_controllers,
  joint_state_broadcaster,
  joint_trajectory_controller,
  joy,
  launch_param_builder,
  moveit_common,
  moveit_configs_utils,
  moveit_core,
  moveit_msgs,
  moveit_resources_panda_moveit_config,
  moveit_ros_planning_interface,
  pluginlib,
  robot_state_publisher,
  ros_testing,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_eigen,
  tf2_ros,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_servo";
  pkgFinal = final.rolling.moveit_servo;
  src = srcs.moveit.moveit_servo;

  colconBuildDepends = [
    ament_cmake
    control_msgs
    control_toolbox
    controller_manager
    geometry_msgs
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_planning_interface
    pluginlib
    sensor_msgs
    std_msgs
    std_srvs
    tf2_eigen
    trajectory_msgs
  ];

  colconRunDepends = [
    control_msgs
    control_toolbox
    controller_manager
    geometry_msgs
    gripper_controllers
    joint_state_broadcaster
    joint_trajectory_controller
    joy
    launch_param_builder
    moveit_common
    moveit_configs_utils
    moveit_core
    moveit_msgs
    moveit_ros_planning_interface
    pluginlib
    robot_state_publisher
    sensor_msgs
    std_msgs
    std_srvs
    tf2_eigen
    tf2_ros
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    controller_manager
    moveit_resources_panda_moveit_config
    ros_testing
  ];
}
