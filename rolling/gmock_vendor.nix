{
  cmake,
  gtest_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gmock_vendor";
  pkgFinal = final.rolling.gmock_vendor;
  src = srcs.googletest.gmock_vendor;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
    gtest_vendor
  ];

  colconTestDepends = [
  ];
}
