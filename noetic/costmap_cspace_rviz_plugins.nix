{
  catkin,
  costmap_cspace_msgs,
  qt5,
  roscpp,
  roslint,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "costmap_cspace_rviz_plugins";
  pkgFinal = final.noetic.costmap_cspace_rviz_plugins;
  src = srcs.neonavigation_rviz_plugins.costmap_cspace_rviz_plugins;

  colconBuildDepends = [
    catkin
    costmap_cspace_msgs
    qt5.qtbase
    roscpp
    rviz
  ];

  colconRunDepends = [
    costmap_cspace_msgs
    qt5.qtbase
    roscpp
    rviz
  ];

  colconTestDepends = [
    roslint
  ];
}
