{
  boost,
  cmake,
  eigen,
  libnabo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libpointmatcher";
  pkgFinal = final.rolling.libpointmatcher;
  src = srcs.libpointmatcher.libpointmatcher;

  colconBuildDepends = [
    boost
    cmake
    eigen
    libnabo
  ];

  colconRunDepends = [
    boost
    eigen
    libnabo
  ];

  colconTestDepends = [
  ];
}
