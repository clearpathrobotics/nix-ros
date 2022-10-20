{
  ament_cmake_copyright,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_cmake_xmllint,
  cmake,
  doxygen,
  git,
  ignition,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ignition_cmake2_vendor";
  pkgFinal = final.rolling.ignition_cmake2_vendor;
  src = srcs.ignition_cmake2_vendor.ignition_cmake2_vendor;

  colconBuildDepends = [
    ament_cmake_test
    cmake
    doxygen
    git
    ignition.cmake2
  ];

  colconRunDepends = [
    ignition.cmake2
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
    ament_cmake_xmllint
  ];
}
