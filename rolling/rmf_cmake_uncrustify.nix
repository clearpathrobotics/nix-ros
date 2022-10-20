{
  ament_cmake_copyright,
  ament_cmake_core,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_uncrustify,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_cmake_uncrustify";
  pkgFinal = final.rolling.rmf_cmake_uncrustify;
  src = srcs.rmf_cmake_uncrustify.rmf_cmake_uncrustify;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
  ];

  colconRunDepends = [
    ament_cmake_test
    ament_uncrustify
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
  ];
}
