{
  catkin,
  diagnostic_msgs,
  kvh_geo_fog_3d_msgs,
  qt5,
  roslint,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kvh_geo_fog_3d_rviz";
  pkgFinal = final.noetic.kvh_geo_fog_3d_rviz;
  src = srcs.kvh_geo_fog_3d.kvh_geo_fog_3d_rviz;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    kvh_geo_fog_3d_msgs
    qt5.qtbase
    qt5.qtdeclarative
    qt5.qtmultimedia
    qt5.qtsvg
    roslint
    rviz
  ];

  colconRunDepends = [
    diagnostic_msgs
    kvh_geo_fog_3d_msgs
    rviz
  ];

  colconTestDepends = [
  ];
}
