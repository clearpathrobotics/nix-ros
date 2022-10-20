{
  catkin,
  joint_state_publisher,
  khi_duaro_description,
  khi_duaro_ikfast_plugin,
  moveit_fake_controller_manager,
  moveit_kinematics,
  moveit_planners_ompl,
  moveit_ros_move_group,
  moveit_ros_visualization,
  moveit_simple_controller_manager,
  robot_state_publisher,
  roslaunch,
  rostest,
  rviz,
  tf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_duaro_moveit_config";
  pkgFinal = final.noetic.khi_duaro_moveit_config;
  src = srcs.khi_robot.khi_duaro_moveit_config;

  colconBuildDepends = [
    catkin
    khi_duaro_description
  ];

  colconRunDepends = [
    joint_state_publisher
    khi_duaro_description
    khi_duaro_ikfast_plugin
    moveit_fake_controller_manager
    moveit_kinematics
    moveit_planners_ompl
    moveit_ros_move_group
    moveit_ros_visualization
    moveit_simple_controller_manager
    robot_state_publisher
    rviz
    tf
    xacro
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
