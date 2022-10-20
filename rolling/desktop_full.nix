{
  ament_cmake,
  desktop,
  perception,
  simulation,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "desktop_full";
  pkgFinal = final.rolling.desktop_full;
  src = srcs.variants.desktop_full;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    desktop
    perception
    simulation
  ];

  colconTestDepends = [
  ];
}
