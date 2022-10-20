{
  catkin,
  geodesy,
  geographic_msgs,
  osm_cartography,
  route_network,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_osm";
  pkgFinal = final.noetic.test_osm;
  src = srcs.open_street_map.test_osm;

  colconBuildDepends = [
    catkin
    geodesy
    geographic_msgs
    osm_cartography
    route_network
  ];

  colconRunDepends = [
    geodesy
    geographic_msgs
    osm_cartography
    route_network
  ];

  colconTestDepends = [
  ];
}
