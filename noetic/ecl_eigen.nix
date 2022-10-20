{
  catkin,
  cmake_modules,
  ecl_license,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_eigen";
  pkgFinal = final.noetic.ecl_eigen;
  src = srcs.ecl_core.ecl_eigen;

  colconBuildDepends = [
    catkin
    cmake_modules
    ecl_license
    eigen
  ];

  colconRunDepends = [
    ecl_license
    eigen
  ];

  colconTestDepends = [
  ];
}
