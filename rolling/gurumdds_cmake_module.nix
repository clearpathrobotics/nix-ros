{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gurumdds_cmake_module";
  pkgFinal = final.rolling.gurumdds_cmake_module;
  src = srcs.rosidl_typesupport_gurumdds.gurumdds_cmake_module;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
