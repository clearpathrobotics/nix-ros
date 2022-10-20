{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "VISP";
  pkgFinal = final.rolling.VISP;
  src = srcs.visp.VISP;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
