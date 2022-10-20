{
  ament_cmake_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_python";
  pkgFinal = final.rolling.ament_cmake_python;
  src = srcs.ament_cmake.ament_cmake_python;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
  ];

  colconTestDepends = [
  ];
}
