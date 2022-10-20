{
  ament_cmake_core,
  ament_cmake_python,
  ament_cmake_ros,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  python3,
  rcutils,
  rosidl_cli,
  rosidl_parser,
  rosidl_pycommon,
  rosidl_typesupport_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_generator_c";
  pkgFinal = final.rolling.rosidl_generator_c;
  src = srcs.rosidl.rosidl_generator_c;

  colconBuildDepends = [
    ament_cmake_python
    ament_cmake_ros
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_index_python
    python3
    rcutils
    rosidl_cli
    rosidl_parser
    rosidl_pycommon
    rosidl_typesupport_interface
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
