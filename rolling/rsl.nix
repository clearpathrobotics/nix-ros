{
  ament_cmake,
  doxygen,
  eigen,
  git,
  tl_expected,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rsl";
  pkgFinal = final.rolling.rsl;
  src = srcs.rsl.rsl;

  colconBuildDepends = [
    ament_cmake
    doxygen
    eigen
    git
    tl_expected
  ];

  colconRunDepends = [
    eigen
    tl_expected
  ];

  colconTestDepends = [
  ];
}
