{
  ament_cmake,
  ament_cmake_core,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  python3,
  python3Packages,
  rosidl_cli,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_adapter";
  pkgFinal = final.rolling.rosidl_adapter;
  src = srcs.rosidl.rosidl_adapter;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake_core
    python3
    python3Packages.empy
    rosidl_cli
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
  ];
}
