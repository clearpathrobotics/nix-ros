{
  catkin,
  exotica_core,
  exotica_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_ddp_solver";
  pkgFinal = final.noetic.exotica_ddp_solver;
  src = srcs.exotica.exotica_ddp_solver;

  colconBuildDepends = [
    catkin
    exotica_core
    exotica_python
  ];

  colconRunDepends = [
    exotica_core
    exotica_python
  ];

  colconTestDepends = [
  ];
}
