{
  catkin,
  dingo_description,
  joint_state_publisher_gui,
  roslaunch,
  rqt_console,
  rqt_gui,
  rqt_robot_monitor,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dingo_viz";
  pkgFinal = final.noetic.dingo_viz;
  src = srcs.dingo_desktop.dingo_viz;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dingo_description
    joint_state_publisher_gui
    rqt_console
    rqt_gui
    rqt_robot_monitor
    rviz
  ];

  colconTestDepends = [
    roslaunch
  ];
}
