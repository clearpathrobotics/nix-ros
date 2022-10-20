{
  ament_cmake_core,
  ament_cmake_export_dependencies,
  ament_cmake_python,
  ament_cmake_test,
  google_benchmark_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_google_benchmark";
  pkgFinal = final.rolling.ament_cmake_google_benchmark;
  src = srcs.ament_cmake.ament_cmake_google_benchmark;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_export_dependencies
    ament_cmake_python
  ];

  colconRunDepends = [
    ament_cmake_test
    google_benchmark_vendor
  ];

  colconTestDepends = [
  ];
}
