{
  ament_cmake,
  launch_xml,
  rmf_visualization_building_systems,
  rmf_visualization_fleet_states,
  rmf_visualization_floorplans,
  rmf_visualization_navgraphs,
  rmf_visualization_obstacles,
  rmf_visualization_rviz2_plugins,
  rmf_visualization_schedule,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_visualization";
  pkgFinal = final.rolling.rmf_visualization;
  src = srcs.rmf_visualization.rmf_visualization;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    launch_xml
    rmf_visualization_building_systems
    rmf_visualization_fleet_states
    rmf_visualization_floorplans
    rmf_visualization_navgraphs
    rmf_visualization_obstacles
    rmf_visualization_rviz2_plugins
    rmf_visualization_schedule
  ];

  colconTestDepends = [
  ];
}
