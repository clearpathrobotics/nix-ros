{
  catkin,
  hector_compressed_map_transport,
  hector_geotiff,
  hector_geotiff_launch,
  hector_geotiff_plugins,
  hector_imu_attitude_to_tf,
  hector_map_server,
  hector_map_tools,
  hector_mapping,
  hector_marker_drawing,
  hector_nav_msgs,
  hector_slam_launch,
  hector_trajectory_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_slam";
  pkgFinal = final.noetic.hector_slam;
  src = srcs.hector_slam.hector_slam;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    hector_compressed_map_transport
    hector_geotiff
    hector_geotiff_launch
    hector_geotiff_plugins
    hector_imu_attitude_to_tf
    hector_map_server
    hector_map_tools
    hector_mapping
    hector_marker_drawing
    hector_nav_msgs
    hector_slam_launch
    hector_trajectory_server
  ];

  colconTestDepends = [
  ];
}
