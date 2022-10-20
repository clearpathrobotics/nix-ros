{
  catkin,
  pluginlib,
  qt5,
  rviz,
  trajectory_tracker_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "trajectory_tracker_rviz_plugins";
  pkgFinal = final.noetic.trajectory_tracker_rviz_plugins;
  src = srcs.neonavigation_rviz_plugins.trajectory_tracker_rviz_plugins;

  colconBuildDepends = [
    catkin
    pluginlib
    qt5.qtbase
    rviz
    trajectory_tracker_msgs
  ];

  colconRunDepends = [
    pluginlib
    qt5.qtbase
    rviz
    trajectory_tracker_msgs
  ];

  colconTestDepends = [
  ];
}
