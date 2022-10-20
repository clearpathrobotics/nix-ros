{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  domain_coordinator,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_ros";
  pkgFinal = final.rolling.ament_cmake_ros;
  src = srcs.ament_cmake_ros.ament_cmake_ros;

  colconBuildDepends = [
    ament_cmake
    domain_coordinator
  ];

  colconRunDepends = [
    ament_cmake
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_pytest
    domain_coordinator
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
