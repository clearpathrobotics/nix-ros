{
  catkin,
  ecl_build,
  ecl_geometry,
  ecl_linear_algebra,
  ecl_threads,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kobuki_dock_drive";
  pkgFinal = final.noetic.kobuki_dock_drive;
  src = srcs.kobuki_core.kobuki_dock_drive;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_geometry
    ecl_linear_algebra
    ecl_threads
  ];

  colconRunDepends = [
    ecl_geometry
    ecl_linear_algebra
    ecl_threads
  ];

  colconTestDepends = [
  ];
}
