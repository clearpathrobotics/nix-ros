{
  catkin,
  exotica_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_ik_solver";
  pkgFinal = final.noetic.exotica_ik_solver;
  src = srcs.exotica.exotica_ik_solver;

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
