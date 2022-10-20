{
  catkin,
  clang,
  cmake_modules,
  code_coverage,
  roscpp,
  rostest,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_utils";
  pkgFinal = final.noetic.pilz_utils;
  src = srcs.pilz_common.pilz_utils;

  colconBuildDepends = [
    catkin
    clang
    roscpp
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    cmake_modules
    code_coverage
    rostest
    rosunit
  ];
}
