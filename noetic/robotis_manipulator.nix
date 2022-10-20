{
  catkin,
  cmake_modules,
  eigen,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robotis_manipulator";
  pkgFinal = final.noetic.robotis_manipulator;
  src = srcs.robotis_manipulator.robotis_manipulator;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    roscpp
  ];

  colconRunDepends = [
    cmake_modules
    eigen
    roscpp
  ];

  colconTestDepends = [
  ];
}
