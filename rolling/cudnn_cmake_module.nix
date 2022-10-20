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
  name = "cudnn_cmake_module";
  pkgFinal = final.rolling.cudnn_cmake_module;
  src = srcs.cudnn_cmake_module.cudnn_cmake_module;

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
