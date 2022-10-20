{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  python3Packages,
  rosidl_adapter,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_parser";
  pkgFinal = final.rolling.rosidl_parser;
  src = srcs.rosidl.rosidl_parser;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    python3Packages.lark
    rosidl_adapter
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    python3Packages.pytest
  ];
}
