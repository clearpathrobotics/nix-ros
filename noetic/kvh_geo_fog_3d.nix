{
  catkin,
  kvh_geo_fog_3d_driver,
  kvh_geo_fog_3d_msgs,
  kvh_geo_fog_3d_rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kvh_geo_fog_3d";
  pkgFinal = final.noetic.kvh_geo_fog_3d;
  src = srcs.kvh_geo_fog_3d.kvh_geo_fog_3d;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    kvh_geo_fog_3d_driver
    kvh_geo_fog_3d_msgs
    kvh_geo_fog_3d_rviz
  ];

  colconTestDepends = [
  ];
}
