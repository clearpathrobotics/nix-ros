{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "VISP";
  pkgFinal = final.noetic.VISP;
  src = srcs.visp.VISP;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
