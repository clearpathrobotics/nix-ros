{
  catkin,
  exotica_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_aico_solver";
  pkgFinal = final.noetic.exotica_aico_solver;
  src = srcs.exotica.exotica_aico_solver;

  colconBuildDepends = [
    catkin
    exotica_core
  ];

  colconRunDepends = [
    exotica_core
  ];

  colconTestDepends = [
  ];
}
