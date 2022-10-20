{
  ament_cmake,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  python3Packages,
  rosidl_pycommon,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_cmake";
  pkgFinal = final.rolling.rosidl_cmake;
  src = srcs.rosidl.rosidl_cmake;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
  ];

  colconRunDepends = [
    ament_cmake
    python3Packages.empy
    rosidl_pycommon
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
