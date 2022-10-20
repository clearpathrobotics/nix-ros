{
  catkin,
  exotica_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_time_indexed_rrt_connect_solver";
  pkgFinal = final.noetic.exotica_time_indexed_rrt_connect_solver;
  src = srcs.exotica.exotica_time_indexed_rrt_connect_solver;

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
