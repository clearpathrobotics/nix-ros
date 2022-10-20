{
  catkin,
  exotica_core,
  exotica_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_ilqr_solver";
  pkgFinal = final.noetic.exotica_ilqr_solver;
  src = srcs.exotica.exotica_ilqr_solver;

  colconBuildDepends = [
    catkin
    exotica_core
    exotica_python
  ];

  colconRunDepends = [
    exotica_core
    exotica_python
  ];

  colconTestDepends = [
  ];
}
