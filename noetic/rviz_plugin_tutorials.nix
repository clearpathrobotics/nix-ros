{
  catkin,
  qt5,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_plugin_tutorials";
  pkgFinal = final.noetic.rviz_plugin_tutorials;
  src = srcs.visualization_tutorials.rviz_plugin_tutorials;

  colconBuildDepends = [
    catkin
    qt5.qtbase
    rviz
  ];

  colconRunDepends = [
    qt5.qtbase
    rviz
  ];

  colconTestDepends = [
  ];
}
