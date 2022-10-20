{
  catkin,
  controller_interface,
  controller_manager,
  interactive_marker_twist_server,
  joint_state_controller,
  joy,
  nav_msgs,
  realtime_tools,
  robot_localization,
  roslaunch,
  teleop_twist_joy,
  tf,
  topic_tools,
  twist_mux,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ridgeback_control";
  pkgFinal = final.noetic.ridgeback_control;
  src = srcs.ridgeback.ridgeback_control;

  colconBuildDepends = [
    catkin
    controller_interface
    controller_manager
    nav_msgs
    realtime_tools
    tf
    urdf
  ];

  colconRunDepends = [
    controller_interface
    controller_manager
    interactive_marker_twist_server
    joint_state_controller
    joy
    nav_msgs
    realtime_tools
    robot_localization
    teleop_twist_joy
    tf
    topic_tools
    twist_mux
    urdf
  ];

  colconTestDepends = [
    roslaunch
  ];
}
