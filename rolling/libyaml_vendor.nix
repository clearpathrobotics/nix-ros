{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  git,
  performance_test_fixture,
  rcpputils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libyaml_vendor";
  pkgFinal = final.rolling.libyaml_vendor;
  src = srcs.libyaml_vendor.libyaml_vendor;

  colconBuildDepends = [
    ament_cmake
    git
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    performance_test_fixture
    rcpputils
  ];
}
