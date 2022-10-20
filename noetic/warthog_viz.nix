{
  catkin,
  joint_state_publisher,
  joint_state_publisher_gui,
  roslaunch,
  rqt_console,
  rqt_gui,
  rqt_robot_monitor,
  rviz,
  warthog_description,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warthog_viz";
  pkgFinal = final.noetic.warthog_viz;
  src = srcs.warthog_desktop.warthog_viz;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    joint_state_publisher
    joint_state_publisher_gui
    rqt_console
    rqt_gui
    rqt_robot_monitor
    rviz
    warthog_description
  ];

  colconTestDepends = [
  ];
}
