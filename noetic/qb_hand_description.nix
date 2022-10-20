{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_hand_description";
  pkgFinal = final.noetic.qb_hand_description;
  src = srcs.qb_hand.qb_hand_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
