{
  catkin,
  desktop,
  perception,
  simulators,
  urdf_sim_tutorial,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "desktop_full";
  pkgFinal = final.noetic.desktop_full;
  src = srcs.metapackages.desktop_full;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    desktop
    perception
    simulators
    urdf_sim_tutorial
  ];

  colconTestDepends = [
  ];
}
