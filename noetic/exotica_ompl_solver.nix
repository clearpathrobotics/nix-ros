{
  catkin,
  exotica_core,
  exotica_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_ompl_solver";
  pkgFinal = final.noetic.exotica_ompl_solver;
  src = srcs.exotica.exotica_ompl_solver;

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
