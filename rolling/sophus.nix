{
  cmake,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sophus";
  pkgFinal = final.rolling.sophus;
  src = srcs.sophus.sophus;

  colconBuildDepends = [
    cmake
    eigen
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
  ];
}
