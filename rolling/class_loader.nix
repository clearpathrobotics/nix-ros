{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  console-bridge,
  console_bridge_vendor,
  rcpputils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "class_loader";
  pkgFinal = final.rolling.class_loader;
  src = srcs.class_loader.class_loader;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_ros
    console-bridge
    console_bridge_vendor
    rcpputils
  ];

  colconRunDepends = [
    console-bridge
    console_bridge_vendor
    rcpputils
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
