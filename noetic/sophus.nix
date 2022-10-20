{
  cmake,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sophus";
  pkgFinal = final.noetic.sophus;
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
