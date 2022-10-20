{
  catkin,
  hector_geotiff,
  hector_nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_geotiff_plugins";
  pkgFinal = final.noetic.hector_geotiff_plugins;
  src = srcs.hector_slam.hector_geotiff_plugins;

  colconBuildDepends = [
    catkin
    hector_geotiff
    hector_nav_msgs
  ];

  colconRunDepends = [
    hector_geotiff
    hector_nav_msgs
  ];

  colconTestDepends = [
  ];
}
