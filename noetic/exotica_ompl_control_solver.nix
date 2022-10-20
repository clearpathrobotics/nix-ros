{
  catkin,
  exotica_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_ompl_control_solver";
  pkgFinal = final.noetic.exotica_ompl_control_solver;
  src = srcs.exotica.exotica_ompl_control_solver;

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
