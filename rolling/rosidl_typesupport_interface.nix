{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_typesupport_interface";
  pkgFinal = final.rolling.rosidl_typesupport_interface;
  src = srcs.rosidl.rosidl_typesupport_interface;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
