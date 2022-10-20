{
  catkin,
  cv_bridge,
  hri,
  hri_msgs,
  qt5,
  roscpp,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hri_rviz";
  pkgFinal = final.noetic.hri_rviz;
  src = srcs.hri_rviz.hri_rviz;

  colconBuildDepends = [
    catkin
    cv_bridge
    hri
    hri_msgs
    qt5.qtbase
    roscpp
    rviz
  ];

  colconRunDepends = [
    cv_bridge
    hri
    hri_msgs
    qt5.qtbase
    roscpp
    rviz
  ];

  colconTestDepends = [
  ];
}
