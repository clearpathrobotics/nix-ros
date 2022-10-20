{
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_utils";
  pkgFinal = final.rolling.rmf_utils;
  src = srcs.rmf_utils.rmf_utils;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
