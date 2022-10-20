{
  ament_cmake,
  rmf_building_map_tools,
  ros2run,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_maps";
  pkgFinal = final.rolling.rmf_demos_maps;
  src = srcs.rmf_demos.rmf_demos_maps;

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
