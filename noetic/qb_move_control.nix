{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_move_control";
  pkgFinal = final.noetic.qb_move_control;
  src = srcs.qb_move.qb_move_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
