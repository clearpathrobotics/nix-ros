{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  geometry_msgs,
  python3Packages,
  rmf_building_map_msgs,
  rmf_door_msgs,
  rmf_lift_msgs,
  rmf_visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_visualization_building_systems";
  pkgFinal = final.rolling.rmf_visualization_building_systems;
  src = srcs.rmf_visualization.rmf_visualization_building_systems;

  colconBuildDepends = [
    geometry_msgs
    rmf_building_map_msgs
    rmf_door_msgs
    rmf_lift_msgs
    rmf_visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rmf_building_map_msgs
    rmf_door_msgs
    rmf_lift_msgs
    rmf_visualization_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
