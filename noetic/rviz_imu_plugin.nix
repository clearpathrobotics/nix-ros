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
  name = "rviz_imu_plugin";
  pkgFinal = final.noetic.rviz_imu_plugin;
  src = srcs.imu_tools.rviz_imu_plugin;

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
