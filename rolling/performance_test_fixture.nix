{
  ament_cmake_core,
  ament_cmake_export_dependencies,
  ament_cmake_export_targets,
  ament_cmake_google_benchmark,
  ament_cmake_test,
  ament_lint_auto,
  ament_lint_common,
  google_benchmark_vendor,
  osrf_testing_tools_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "performance_test_fixture";
  pkgFinal = final.rolling.performance_test_fixture;
  src = srcs.performance_test_fixture.performance_test_fixture;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_export_dependencies
    ament_cmake_export_targets
    ament_cmake_test
    google_benchmark_vendor
    osrf_testing_tools_cpp
  ];

  colconRunDepends = [
    ament_cmake_google_benchmark
    google_benchmark_vendor
    osrf_testing_tools_cpp
  ];

  colconTestDepends = [
    ament_cmake_google_benchmark
    ament_lint_auto
    ament_lint_common
  ];
}
