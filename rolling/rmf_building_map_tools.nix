{
  ament_index_python,
  libyamlcpp,
  python3Packages,
  rclpy,
  rmf_building_map_msgs,
  rmf_site_map_msgs,
  sqlite,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_building_map_tools";
  pkgFinal = final.rolling.rmf_building_map_tools;
  src = srcs.rmf_traffic_editor.rmf_building_map_tools;

  colconBuildDepends = [
    rmf_building_map_msgs
  ];

  colconRunDepends = [
    ament_index_python
    libyamlcpp
    python3Packages.Rtree
    python3Packages.fiona
    python3Packages.pyproj
    python3Packages.pyyaml
    python3Packages.requests
    python3Packages.shapely
    rclpy
    rmf_building_map_msgs
    rmf_site_map_msgs
    sqlite
    std_msgs
  ];

  colconTestDepends = [
    python3Packages.pytest
  ];
}
