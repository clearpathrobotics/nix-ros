{
  catkin,
  hector_geotiff,
  hector_geotiff_plugins,
  hector_trajectory_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_geotiff_launch";
  pkgFinal = final.noetic.hector_geotiff_launch;
  src = srcs.hector_slam.hector_geotiff_launch;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    hector_geotiff
    hector_geotiff_plugins
    hector_trajectory_server
  ];

  colconTestDepends = [
  ];
}
