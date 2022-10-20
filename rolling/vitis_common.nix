{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  ament_vitis,
  opencl-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vitis_common";
  pkgFinal = final.rolling.vitis_common;
  src = srcs.vitis_common.vitis_common;

  colconBuildDepends = [
    ament_cmake
    ament_vitis
    opencl-headers
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
