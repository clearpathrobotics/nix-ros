{
  ament_cmake,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  performance_test_fixture,
  rcutils,
  rosidl_typesupport_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_runtime_c";
  pkgFinal = final.rolling.rosidl_runtime_c;
  src = srcs.rosidl.rosidl_runtime_c;

  colconBuildDepends = [
    ament_cmake_ros
    rcutils
    rosidl_typesupport_interface
  ];

  colconRunDepends = [
    ament_cmake
    rcutils
    rosidl_typesupport_interface
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    performance_test_fixture
  ];
}
