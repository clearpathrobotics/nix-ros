{
  catkin,
  exotica_aico_solver,
  exotica_collision_scene_fcl_latest,
  exotica_core,
  exotica_core_task_maps,
  exotica_ik_solver,
  exotica_levenberg_marquardt_solver,
  exotica_ompl_solver,
  exotica_python,
  exotica_time_indexed_rrt_connect_solver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica";
  pkgFinal = final.noetic.exotica;
  src = srcs.exotica.exotica;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    exotica_aico_solver
    exotica_collision_scene_fcl_latest
    exotica_core
    exotica_core_task_maps
    exotica_ik_solver
    exotica_levenberg_marquardt_solver
    exotica_ompl_solver
    exotica_python
    exotica_time_indexed_rrt_connect_solver
  ];

  colconTestDepends = [
  ];
}
