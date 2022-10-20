{
  catkin,
  exotica_core,
  exotica_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_ilqg_solver";
  pkgFinal = final.noetic.exotica_ilqg_solver;
  src = srcs.exotica.exotica_ilqg_solver;

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
