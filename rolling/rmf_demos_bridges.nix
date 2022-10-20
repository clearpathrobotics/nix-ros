{
  python3Packages,
  rmf_building_map_tools,
  rmf_fleet_msgs,
  rmf_site_map_msgs,
  rmf_traffic_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_bridges";
  pkgFinal = final.rolling.rmf_demos_bridges;
  src = srcs.rmf_demos.rmf_demos_bridges;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.pyproj
    python3Packages.pyyaml
    rmf_building_map_tools
    rmf_fleet_msgs
    rmf_site_map_msgs
    rmf_traffic_msgs
  ];

  colconTestDepends = [
  ];
}
