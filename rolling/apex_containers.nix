{
  ament_cmake,
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  apex_test_tools,
  foonathan_memory_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "apex_containers";
  pkgFinal = final.rolling.apex_containers;
  src = srcs.apex_containers.apex_containers;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_auto
    foonathan_memory_vendor
  ];

  colconRunDepends = [
    foonathan_memory_vendor
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    apex_test_tools
  ];
}
