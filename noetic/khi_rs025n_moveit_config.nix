{
  catkin,
  joint_state_publisher,
  khi_rs_description,
  khi_rs_ikfast_plugin,
  moveit_fake_controller_manager,
  moveit_kinematics,
  moveit_planners_ompl,
  moveit_ros_move_group,
  moveit_ros_visualization,
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
  name = "khi_rs025n_moveit_config";
  pkgFinal = final.noetic.khi_rs025n_moveit_config;
  src = srcs.khi_robot.khi_rs025n_moveit_config;

  colconBuildDepends = [
    catkin
    khi_rs_description
  ];

  colconRunDepends = [
    joint_state_publisher
    khi_rs_description
    khi_rs_ikfast_plugin
    moveit_fake_controller_manager
    moveit_kinematics
    moveit_planners_ompl
    moveit_ros_move_group
    moveit_ros_visualization
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
