{
  lanelet2_core,
  mrt_cmake_modules,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_maps";
  pkgFinal = final.rolling.lanelet2_maps;
  src = srcs.lanelet2.lanelet2_maps;

  colconBuildDepends = [
    mrt_cmake_modules
  ];

  colconRunDepends = [
    lanelet2_core
    mrt_cmake_modules
  ];

  colconTestDepends = [
  ];
}
