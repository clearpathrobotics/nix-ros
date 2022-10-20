{
  catkin,
  exotica_core,
  exotica_python,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_cartpole_dynamics_solver";
  pkgFinal = final.noetic.exotica_cartpole_dynamics_solver;
  src = srcs.exotica.exotica_cartpole_dynamics_solver;

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
    exotica_python
  ];
}
