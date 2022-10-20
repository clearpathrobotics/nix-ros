{
  catkin,
  diagnostic_aggregator,
  fetch_description,
  fetch_drivers,
  fetch_navigation,
  fetch_open_auto_dock,
  fetch_teleop,
  graft,
  joy,
  robot_state_publisher,
  sick_tim,
  sound_play,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "freight_bringup";
  pkgFinal = final.noetic.freight_bringup;
  src = srcs.fetch_robots.freight_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_aggregator
    fetch_description
    fetch_drivers
    fetch_navigation
    fetch_open_auto_dock
    fetch_teleop
    graft
    joy
    robot_state_publisher
    sick_tim
    sound_play
  ];

  colconTestDepends = [
  ];
}
