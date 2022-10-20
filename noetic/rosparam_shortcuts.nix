{
  catkin,
  cmake_modules,
  eigen,
  eigen_conversions,
  roscpp,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosparam_shortcuts";
  pkgFinal = final.noetic.rosparam_shortcuts;
  src = srcs.rosparam_shortcuts.rosparam_shortcuts;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    eigen_conversions
    roscpp
    roslint
  ];

  colconRunDepends = [
    eigen_conversions
    roscpp
  ];

  colconTestDepends = [
  ];
}
