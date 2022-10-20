{
  boost,
  cmake,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libnabo";
  pkgFinal = final.rolling.libnabo;
  src = srcs.libnabo.libnabo;

  colconBuildDepends = [
    boost
    cmake
    eigen
  ];

  colconRunDepends = [
    boost
    eigen
  ];

  colconTestDepends = [
  ];
}
