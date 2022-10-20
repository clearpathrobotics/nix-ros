{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  rcpputils,
  rcutils,
  rosidl_cmake,
  rosidl_generator_c,
  rosidl_generator_cpp,
  rosidl_typesupport_interface,
  rosidl_typesupport_introspection_c,
  rosidl_typesupport_introspection_cpp,
  test_interface_files,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_typesupport_introspection_tests";
  pkgFinal = final.rolling.rosidl_typesupport_introspection_tests;
  src = srcs.rosidl.rosidl_typesupport_introspection_tests;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    rcpputils
    rcutils
    rosidl_cmake
    rosidl_generator_c
    rosidl_generator_cpp
    rosidl_typesupport_interface
    rosidl_typesupport_introspection_c
    rosidl_typesupport_introspection_cpp
    test_interface_files
  ];
}
