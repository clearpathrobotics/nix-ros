{
  catkin,
  eigen,
  exotica_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_levenberg_marquardt_solver";
  pkgFinal = final.noetic.exotica_levenberg_marquardt_solver;
  src = srcs.exotica.exotica_levenberg_marquardt_solver;

  colconBuildDepends = [
    catkin
    eigen
    exotica_core
  ];

  colconRunDepends = [
    eigen
    exotica_core
  ];

  colconTestDepends = [
  ];
}
