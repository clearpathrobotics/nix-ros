{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_launch_testing";
  pkgFinal = final.rolling.test_launch_testing;
  src = srcs.launch.test_launch_testing;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_index_python
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    python3Packages.pytest
  ];
}
