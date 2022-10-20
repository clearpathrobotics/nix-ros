{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcdiscover";
  pkgFinal = final.rolling.rcdiscover;
  src = srcs.rcdiscover.rcdiscover;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
