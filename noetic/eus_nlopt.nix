{
  catkin,
  cmake_modules,
  nlopt,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eus_nlopt";
  pkgFinal = final.noetic.eus_nlopt;
  src = srcs.jsk_control.eus_nlopt;

  colconBuildDepends = [
    catkin
    cmake_modules
    nlopt
  ];

  colconRunDepends = [
    nlopt
  ];

  colconTestDepends = [
  ];
}
