{
  catkin,
  cob_hand_bridge,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_hand";
  pkgFinal = final.noetic.cob_hand;
  src = srcs.cob_hand.cob_hand;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_hand_bridge
  ];

  colconTestDepends = [
  ];
}
