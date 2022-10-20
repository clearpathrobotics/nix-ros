{
  ament_cmake_auto,
  ament_lint_auto,
  apex_test_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_apex_test_tools";
  pkgFinal = final.rolling.test_apex_test_tools;
  src = srcs.apex_test_tools.test_apex_test_tools;

  colconBuildDepends = [
    ament_cmake_auto
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    apex_test_tools
  ];
}
