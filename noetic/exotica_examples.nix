{
  catkin,
  exotica_aico_solver,
  exotica_cartpole_dynamics_solver,
  exotica_collision_scene_fcl_latest,
  exotica_core,
  exotica_core_task_maps,
  exotica_ddp_solver,
  exotica_double_integrator_dynamics_solver,
  exotica_ik_solver,
  exotica_ilqg_solver,
  exotica_ilqr_solver,
  exotica_levenberg_marquardt_solver,
  exotica_ompl_control_solver,
  exotica_ompl_solver,
  exotica_pendulum_dynamics_solver,
  exotica_pinocchio_dynamics_solver,
  exotica_python,
  exotica_quadrotor_dynamics_solver,
  exotica_scipy_solver,
  exotica_time_indexed_rrt_connect_solver,
  geometry_msgs,
  interactive_markers,
  python3Packages,
  robot_state_publisher,
  rostest,
  rosunit,
  rviz,
  sensor_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_examples";
  pkgFinal = final.noetic.exotica_examples;
  src = srcs.exotica.exotica_examples;

  colconBuildDepends = [
    catkin
    exotica_aico_solver
    exotica_core
    exotica_core_task_maps
    exotica_ik_solver
    sensor_msgs
  ];

  colconRunDepends = [
    exotica_aico_solver
    exotica_cartpole_dynamics_solver
    exotica_collision_scene_fcl_latest
    exotica_core
    exotica_core_task_maps
    exotica_ddp_solver
    exotica_double_integrator_dynamics_solver
    exotica_ik_solver
    exotica_ilqg_solver
    exotica_ilqr_solver
    exotica_levenberg_marquardt_solver
    exotica_ompl_control_solver
    exotica_ompl_solver
    exotica_pendulum_dynamics_solver
    exotica_pinocchio_dynamics_solver
    exotica_python
    exotica_quadrotor_dynamics_solver
    exotica_scipy_solver
    exotica_time_indexed_rrt_connect_solver
    geometry_msgs
    interactive_markers
    python3Packages.pykdl
    robot_state_publisher
    rviz
    sensor_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    rostest
    rosunit
  ];
}
