{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geometry_tutorials";
  pkgFinal = final.rolling.geometry_tutorials;
  src = srcs.geometry_tutorials.geometry_tutorials;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
