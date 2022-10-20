{
  ament_cmake_copyright,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_cmake_xmllint,
  cmake,
  git,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "foonathan_memory_vendor";
  pkgFinal = final.rolling.foonathan_memory_vendor;
  src = srcs.foonathan_memory_vendor.foonathan_memory_vendor;

  colconBuildDepends = [
    cmake
    git
  ];

  colconRunDepends = [
    cmake
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
    ament_cmake_test
    ament_cmake_xmllint
  ];
}
