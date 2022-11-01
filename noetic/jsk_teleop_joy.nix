{
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  image_view2,
  interactive_markers,
  joy_mouse,
  jsk_footstep_msgs,
  jsk_interactive_marker,
  jsk_rviz_plugins,
  python3Packages,
  tf,
  view_controller_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_teleop_joy";
  pkgFinal = final.noetic.jsk_teleop_joy;
  src = srcs.jsk_control.jsk_teleop_joy;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    image_view2
    interactive_markers
    joy_mouse
    jsk_footstep_msgs
    jsk_interactive_marker
    jsk_rviz_plugins
    python3Packages.pygame
    tf
    view_controller_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
