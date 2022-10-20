{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  console-bridge,
  performance_test_fixture,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "console_bridge_vendor";
  pkgFinal = final.rolling.console_bridge_vendor;
  src = srcs.console_bridge_vendor.console_bridge_vendor;

  colconBuildDepends = [
    ament_cmake
    console-bridge
  ];

  colconRunDepends = [
    console-bridge
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    performance_test_fixture
  ];
}
