{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  rosidl_cmake,
  rosidl_generator_c,
  rosidl_generator_cpp,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  test_interface_files,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_generator_tests";
  pkgFinal = final.rolling.rosidl_generator_tests;
  src = srcs.rosidl.rosidl_generator_tests;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    rosidl_cmake
    rosidl_generator_c
    rosidl_generator_cpp
    rosidl_runtime_c
    rosidl_runtime_cpp
    test_interface_files
  ];
}
