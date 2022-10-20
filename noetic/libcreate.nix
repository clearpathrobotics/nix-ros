{
  boost,
  cmake,
  gtest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libcreate";
  pkgFinal = final.noetic.libcreate;
  src = srcs.libcreate.libcreate;

  colconBuildDepends = [
    boost
    cmake
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
    gtest
  ];
}
