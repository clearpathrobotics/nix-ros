{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcdiscover";
  pkgFinal = final.noetic.rcdiscover;
  src = srcs.rcdiscover.rcdiscover;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
