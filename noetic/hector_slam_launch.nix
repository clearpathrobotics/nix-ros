{
  catkin,
  hector_geotiff,
  hector_geotiff_plugins,
  hector_map_server,
  hector_mapping,
  hector_trajectory_server,
  rviz,
  tf,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_slam_launch";
  pkgFinal = final.noetic.hector_slam_launch;
  src = srcs.hector_slam.hector_slam_launch;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    hector_geotiff
    hector_geotiff_plugins
    hector_map_server
    hector_mapping
    hector_trajectory_server
    rviz
    tf
    topic_tools
  ];

  colconTestDepends = [
  ];
}
