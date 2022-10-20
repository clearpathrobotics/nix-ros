{
  catkin,
  exotica_core,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_scipy_solver";
  pkgFinal = final.noetic.exotica_scipy_solver;
  src = srcs.exotica.exotica_scipy_solver;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    exotica_core
    python3Packages.numpy
    python3Packages.scipy
  ];

  colconTestDepends = [
  ];
}
