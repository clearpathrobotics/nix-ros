{
  catkin,
  qt5,
  roscpp,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "librviz_tutorial";
  pkgFinal = final.noetic.librviz_tutorial;
  src = srcs.visualization_tutorials.librviz_tutorial;

  colconBuildDepends = [
    catkin
    qt5.qtbase
    roscpp
    rviz
  ];

  colconRunDepends = [
    qt5.qtbase
    roscpp
    rviz
  ];

  colconTestDepends = [
  ];
}
