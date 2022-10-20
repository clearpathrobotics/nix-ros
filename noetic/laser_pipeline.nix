{
  catkin,
  laser_assembler,
  laser_filters,
  laser_geometry,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_pipeline";
  pkgFinal = final.noetic.laser_pipeline;
  src = srcs.laser_pipeline.laser_pipeline;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    laser_assembler
    laser_filters
    laser_geometry
  ];

  colconTestDepends = [
  ];
}
