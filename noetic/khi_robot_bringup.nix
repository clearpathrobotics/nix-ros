{
  catkin,
  controller_manager,
  joint_state_controller,
  joint_trajectory_controller,
  khi_duaro_description,
  khi_duaro_moveit_config,
  khi_robot_control,
  position_controllers,
  robot_state_publisher,
  roslaunch,
  rostest,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_robot_bringup";
  pkgFinal = final.noetic.khi_robot_bringup;
  src = srcs.khi_robot.khi_robot_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    controller_manager
    joint_state_controller
    joint_trajectory_controller
    khi_duaro_description
    khi_duaro_moveit_config
    khi_robot_control
    position_controllers
    robot_state_publisher
    tf
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
