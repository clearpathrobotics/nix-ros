{
  ament_cmake,
  rmf_building_map_tools,
  ros2run,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_traffic_editor_test_maps";
  pkgFinal = final.rolling.rmf_traffic_editor_test_maps;
  src = srcs.rmf_traffic_editor.rmf_traffic_editor_test_maps;

  colconBuildDepends = [
    ament_cmake
    rmf_building_map_tools
    ros2run
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
