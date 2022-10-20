{
  catkin,
  cv_bridge,
  eigen,
  geometry_msgs,
  hector_map_tools,
  image_transport,
  nav_msgs,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_compressed_map_transport";
  pkgFinal = final.noetic.hector_compressed_map_transport;
  src = srcs.hector_slam.hector_compressed_map_transport;

  colconBuildDepends = [
    catkin
    cv_bridge
    eigen
    geometry_msgs
    hector_map_tools
    image_transport
    nav_msgs
    sensor_msgs
  ];

  colconRunDepends = [
    cv_bridge
    eigen
    geometry_msgs
    hector_map_tools
    image_transport
    nav_msgs
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
