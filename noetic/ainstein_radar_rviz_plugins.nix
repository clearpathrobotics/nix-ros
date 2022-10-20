{
  ainstein_radar_msgs,
  catkin,
  pcl,
  qt5,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ainstein_radar_rviz_plugins";
  pkgFinal = final.noetic.ainstein_radar_rviz_plugins;
  src = srcs.ainstein_radar.ainstein_radar_rviz_plugins;

  colconBuildDepends = [
    ainstein_radar_msgs
    catkin
    qt5.qtbase
    rviz
  ];

  colconRunDepends = [
    ainstein_radar_msgs
    pcl
    qt5.qtbase
    rviz
  ];

  colconTestDepends = [
  ];
}
