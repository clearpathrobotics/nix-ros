{
  ament_cmake,
  ament_cmake_copyright,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tensorrt_cmake_module";
  pkgFinal = final.rolling.tensorrt_cmake_module;
  src = srcs.tensorrt_cmake_module.tensorrt_cmake_module;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
    ament_cmake_xmllint
  ];
}
