{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fastrtps_cmake_module";
  pkgFinal = final.rolling.fastrtps_cmake_module;
  src = srcs.rosidl_typesupport_fastrtps.fastrtps_cmake_module;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
