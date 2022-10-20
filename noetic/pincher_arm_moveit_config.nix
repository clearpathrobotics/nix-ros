{
  catkin,
  joint_state_publisher,
  moveit_fake_controller_manager,
  moveit_kinematics,
  moveit_planners_ompl,
  moveit_ros_move_group,
  moveit_ros_visualization,
  moveit_setup_assistant,
  moveit_simple_controller_manager,
  pincher_arm_description,
  robot_state_publisher,
  tf2_ros,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pincher_arm_moveit_config";
  pkgFinal = final.noetic.pincher_arm_moveit_config;
  src = srcs.pincher_arm.pincher_arm_moveit_config;

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
    moveit_setup_assistant
    moveit_simple_controller_manager
    pincher_arm_description
    robot_state_publisher
    tf2_ros
    xacro
  ];

  colconTestDepends = [
  ];
}
