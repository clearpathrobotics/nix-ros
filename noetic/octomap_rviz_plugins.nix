{
  catkin,
  octomap_msgs,
  qt5,
  roscpp,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_rviz_plugins";
  pkgFinal = final.noetic.octomap_rviz_plugins;
  src = srcs.octomap_rviz_plugins.octomap_rviz_plugins;

  colconBuildDepends = [
    catkin
    octomap_msgs
    qt5.qtbase
    roscpp
    rviz
  ];

  colconRunDepends = [
    octomap_msgs
    qt5.qtbase
    roscpp
    rviz
  ];

  colconTestDepends = [
  ];
}
