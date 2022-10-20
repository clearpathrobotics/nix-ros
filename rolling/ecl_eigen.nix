{
  ament_cmake_ros,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_eigen";
  pkgFinal = final.rolling.ecl_eigen;
  src = srcs.ecl_core.ecl_eigen;

  colconBuildDepends = [
    ament_cmake_ros
    eigen
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
  ];
}
