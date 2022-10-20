{
  catkin,
  exotica_core,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_pendulum_dynamics_solver";
  pkgFinal = final.noetic.exotica_pendulum_dynamics_solver;
  src = srcs.exotica.exotica_pendulum_dynamics_solver;

  colconBuildDepends = [
    catkin
    exotica_core
    roscpp
  ];

  colconRunDepends = [
    exotica_core
    roscpp
  ];

  colconTestDepends = [
  ];
}
