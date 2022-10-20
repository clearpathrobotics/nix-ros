{
  catkin,
  controller_manager,
  diff_drive_controller,
  interactive_marker_twist_server,
  joint_state_controller,
  joy,
  ridgeback_control,
  robot_localization,
  roslaunch,
  teleop_twist_joy,
  topic_tools,
  twist_mux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dingo_control";
  pkgFinal = final.noetic.dingo_control;
  src = srcs.dingo.dingo_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    controller_manager
    diff_drive_controller
    interactive_marker_twist_server
    joint_state_controller
    joy
    ridgeback_control
    robot_localization
    teleop_twist_joy
    topic_tools
    twist_mux
  ];

  colconTestDepends = [
    roslaunch
  ];
}
