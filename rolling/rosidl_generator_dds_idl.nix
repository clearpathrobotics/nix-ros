{
  ament_cmake,
  ament_cmake_pytest,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  rosidl_cli,
  rosidl_pycommon,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_generator_dds_idl";
  pkgFinal = final.rolling.rosidl_generator_dds_idl;
  src = srcs.rosidl_dds.rosidl_generator_dds_idl;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake
    ament_index_python
    rosidl_cli
    rosidl_pycommon
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
  ];
}
