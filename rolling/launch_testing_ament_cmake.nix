{
  ament_cmake,
  ament_cmake_copyright,
  ament_cmake_test,
  launch_testing,
  python_cmake_module,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_testing_ament_cmake";
  pkgFinal = final.rolling.launch_testing_ament_cmake;
  src = srcs.launch.launch_testing_ament_cmake;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake_test
    launch_testing
    python_cmake_module
  ];

  colconTestDepends = [
    ament_cmake_copyright
    launch_testing
    python_cmake_module
  ];
}
