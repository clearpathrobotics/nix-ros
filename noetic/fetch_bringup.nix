{
  catkin,
  depth_image_proc,
  diagnostic_aggregator,
  fetch_description,
  fetch_drivers,
  fetch_moveit_config,
  fetch_navigation,
  fetch_open_auto_dock,
  fetch_teleop,
  graft,
  image_proc,
  joy,
  openni2_launch,
  robot_state_publisher,
  sensor_msgs,
  sick_tim,
  sound_play,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_bringup";
  pkgFinal = final.noetic.fetch_bringup;
  src = srcs.fetch_robots.fetch_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    depth_image_proc
    diagnostic_aggregator
    fetch_description
    fetch_drivers
    fetch_moveit_config
    fetch_navigation
    fetch_open_auto_dock
    fetch_teleop
    graft
    image_proc
    joy
    openni2_launch
    robot_state_publisher
    sensor_msgs
    sick_tim
    sound_play
  ];

  colconTestDepends = [
  ];
}
