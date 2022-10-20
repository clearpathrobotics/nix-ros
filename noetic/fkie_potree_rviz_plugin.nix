{
  boost,
  catkin,
  jsoncpp,
  media_export,
  qt5,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fkie_potree_rviz_plugin";
  pkgFinal = final.noetic.fkie_potree_rviz_plugin;
  src = srcs.fkie_potree_rviz_plugin.fkie_potree_rviz_plugin;

  colconBuildDepends = [
    boost
    catkin
    jsoncpp
    qt5.qtbase
    rviz
  ];

  colconRunDepends = [
    boost
    media_export
    qt5.qtbase
    rviz
  ];

  colconTestDepends = [
  ];
}
