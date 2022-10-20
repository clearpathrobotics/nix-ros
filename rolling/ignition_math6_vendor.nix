{
  ament_cmake_copyright,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_cmake_xmllint,
  cmake,
  eigen,
  git,
  ignition,
  ignition_cmake2_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ignition_math6_vendor";
  pkgFinal = final.rolling.ignition_math6_vendor;
  src = srcs.ignition_math6_vendor.ignition_math6_vendor;

  colconBuildDepends = [
    ament_cmake_test
    cmake
    eigen
    git
    ignition.math6
    ignition_cmake2_vendor
  ];

  colconRunDepends = [
    ignition.math6
    ignition_cmake2_vendor
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
    ament_cmake_xmllint
  ];
}
