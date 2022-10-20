{
  catkin,
  husky_description,
  joint_state_publisher,
  joint_state_publisher_gui,
  robot_state_publisher,
  roslaunch,
  rqt_console,
  rqt_gui,
  rqt_robot_monitor,
  rviz,
  rviz_imu_plugin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "husky_viz";
  pkgFinal = final.noetic.husky_viz;
  src = srcs.husky.husky_viz;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    husky_description
    joint_state_publisher
    joint_state_publisher_gui
    robot_state_publisher
    rqt_console
    rqt_gui
    rqt_robot_monitor
    rviz
    rviz_imu_plugin
  ];

  colconTestDepends = [
  ];
}
