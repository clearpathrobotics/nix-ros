{
  catkin,
  exotica_cartpole_dynamics_solver,
  exotica_double_integrator_dynamics_solver,
  exotica_pendulum_dynamics_solver,
  exotica_pinocchio_dynamics_solver,
  exotica_quadrotor_dynamics_solver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_dynamics_solvers";
  pkgFinal = final.noetic.exotica_dynamics_solvers;
  src = srcs.exotica.exotica_dynamics_solvers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    exotica_cartpole_dynamics_solver
    exotica_double_integrator_dynamics_solver
    exotica_pendulum_dynamics_solver
    exotica_pinocchio_dynamics_solver
    exotica_quadrotor_dynamics_solver
  ];

  colconTestDepends = [
  ];
}
