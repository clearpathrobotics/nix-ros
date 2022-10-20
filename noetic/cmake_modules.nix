{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cmake_modules";
  pkgFinal = final.noetic.cmake_modules;
  src = srcs.cmake_modules.cmake_modules;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
