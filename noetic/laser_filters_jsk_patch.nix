{
  catkin,
  cmake_modules,
  filters,
  git,
  laser_filters,
  laser_geometry,
  mk,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_filters_jsk_patch";
  pkgFinal = final.noetic.laser_filters_jsk_patch;
  src = srcs.jsk_3rdparty.laser_filters_jsk_patch;

  colconBuildDepends = [
    catkin
    cmake_modules
    filters
    git
    laser_filters
    laser_geometry
    mk
  ];

  colconRunDepends = [
    filters
    laser_filters
  ];

  colconTestDepends = [
  ];
}
