{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gtest_vendor";
  pkgFinal = final.rolling.gtest_vendor;
  src = srcs.googletest.gtest_vendor;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
