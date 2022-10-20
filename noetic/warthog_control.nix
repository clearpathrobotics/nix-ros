{
  catkin,
  controller_manager,
  diff_drive_controller,
  interactive_marker_twist_server,
  joint_state_controller,
  joy,
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
  name = "warthog_control";
  pkgFinal = final.noetic.warthog_control;
  src = srcs.warthog.warthog_control;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    controller_manager
    diff_drive_controller
    interactive_marker_twist_server
    joint_state_controller
    joy
    robot_localization
    teleop_twist_joy
    topic_tools
    twist_mux
  ];

  colconTestDepends = [
  ];
}
