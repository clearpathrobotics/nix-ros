{
  catkin,
  controller_manager,
  diff_drive_controller,
  husky_description,
  interactive_marker_twist_server,
  joint_state_controller,
  joint_trajectory_controller,
  joy,
  robot_localization,
  robot_state_publisher,
  roslaunch,
  rostopic,
  teleop_twist_joy,
  twist_mux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "husky_control";
  pkgFinal = final.noetic.husky_control;
  src = srcs.husky.husky_control;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    controller_manager
    diff_drive_controller
    husky_description
    interactive_marker_twist_server
    joint_state_controller
    joint_trajectory_controller
    joy
    robot_localization
    robot_state_publisher
    rostopic
    teleop_twist_joy
    twist_mux
  ];

  colconTestDepends = [
  ];
}
