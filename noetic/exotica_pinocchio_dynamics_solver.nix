{
  catkin,
  clang,
  exotica_core,
  pinocchio,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_pinocchio_dynamics_solver";
  pkgFinal = final.noetic.exotica_pinocchio_dynamics_solver;
  src = srcs.exotica.exotica_pinocchio_dynamics_solver;

  colconBuildDepends = [
    catkin
    clang
    exotica_core
    pinocchio
    roscpp
  ];

  colconRunDepends = [
    clang
    exotica_core
    pinocchio
    roscpp
  ];

  colconTestDepends = [
  ];
}
