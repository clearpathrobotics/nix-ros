{
  ament_cmake,
  ament_cmake_core,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  python3,
  rosidl_cli,
  rosidl_generator_c,
  rosidl_parser,
  rosidl_pycommon,
  rosidl_runtime_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_generator_cpp";
  pkgFinal = final.rolling.rosidl_generator_cpp;
  src = srcs.rosidl.rosidl_generator_cpp;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_index_python
    python3
    rosidl_cli
    rosidl_generator_c
    rosidl_parser
    rosidl_pycommon
    rosidl_runtime_cpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
