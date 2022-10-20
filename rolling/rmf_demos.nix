{
  ament_cmake,
  launch_xml,
  rmf_building_map_tools,
  rmf_demos_assets,
  rmf_demos_fleet_adapter,
  rmf_demos_maps,
  rmf_demos_panel,
  rmf_demos_tasks,
  rmf_fleet_adapter,
  rmf_task_ros2,
  rmf_traffic_ros2,
  rmf_visualization,
  rviz2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos";
  pkgFinal = final.rolling.rmf_demos;
  src = srcs.rmf_demos.rmf_demos;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    launch_xml
    rmf_building_map_tools
    rmf_demos_assets
    rmf_demos_fleet_adapter
    rmf_demos_maps
    rmf_demos_panel
    rmf_demos_tasks
    rmf_fleet_adapter
    rmf_task_ros2
    rmf_traffic_ros2
    rmf_visualization
    rviz2
  ];

  colconTestDepends = [
  ];
}
