{
  ament_cmake_core,
  ament_cmake_ros,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  mimick_vendor,
  performance_test_fixture,
  python3,
  rcpputils,
  rcutils,
  rosidl_cli,
  rosidl_pycommon,
  rosidl_runtime_c,
  rosidl_typesupport_interface,
  rosidl_typesupport_introspection_c,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_typesupport_c";
  pkgFinal = final.rolling.rosidl_typesupport_c;
  src = srcs.rosidl_typesupport.rosidl_typesupport_c;

  colconBuildDepends = [
    ament_cmake_ros
    rcpputils
    rcutils
    rosidl_runtime_c
    rosidl_typesupport_introspection_c
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_index_python
    python3
    rcpputils
    rcutils
    rosidl_cli
    rosidl_pycommon
    rosidl_runtime_c
    rosidl_typesupport_interface
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    mimick_vendor
    performance_test_fixture
  ];
}
