{
  ament_package,
  cmake,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_core";
  pkgFinal = final.rolling.ament_cmake_core;
  src = srcs.ament_cmake.ament_cmake_core;

  colconBuildDepends = [
    ament_package
    cmake
    python3Packages.catkin-pkg
  ];

  colconRunDepends = [
    ament_package
    cmake
    python3Packages.catkin-pkg
  ];

  colconTestDepends = [
  ];
}
