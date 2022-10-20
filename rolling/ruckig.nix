{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ruckig";
  pkgFinal = final.rolling.ruckig;
  src = srcs.ruckig.ruckig;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
