{
  catkin,
  franka_description,
  joint_state_publisher,
  joint_state_publisher_gui,
  moveit_fake_controller_manager,
  moveit_kinematics,
  moveit_planners,
  moveit_ros_move_group,
  moveit_ros_visualization,
  moveit_setup_assistant,
  moveit_simple_controller_manager,
  robot_state_publisher,
  rviz,
  tf2_ros,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "panda_moveit_config";
  pkgFinal = final.noetic.panda_moveit_config;
  src = srcs.panda_moveit_config.panda_moveit_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    franka_description
    joint_state_publisher
    joint_state_publisher_gui
    moveit_fake_controller_manager
    moveit_kinematics
    moveit_planners
    moveit_ros_move_group
    moveit_ros_visualization
    moveit_setup_assistant
    moveit_simple_controller_manager
    robot_state_publisher
    rviz
    tf2_ros
    xacro
  ];

  colconTestDepends = [
  ];
}
