{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_hand_control";
  pkgFinal = final.noetic.qb_hand_control;
  src = srcs.qb_hand.qb_hand_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
