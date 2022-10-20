{
  cairo,
  cmake,
  gsl,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "csm";
  pkgFinal = final.noetic.csm;
  src = srcs.csm.csm;

  colconBuildDepends = [
    cairo
    cmake
    gsl
    pkg-config
  ];

  colconRunDepends = [
    gsl
  ];

  colconTestDepends = [
  ];
}
