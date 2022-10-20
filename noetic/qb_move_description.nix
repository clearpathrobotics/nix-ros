{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_move_description";
  pkgFinal = final.noetic.qb_move_description;
  src = srcs.qb_move.qb_move_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
