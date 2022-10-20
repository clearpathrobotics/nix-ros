{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cnpy";
  pkgFinal = final.noetic.cnpy;
  src = srcs.cnpy.cnpy;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
