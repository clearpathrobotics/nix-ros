{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tl_expected";
  pkgFinal = final.rolling.tl_expected;
  src = srcs.cpp_polyfills.tl_expected;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
