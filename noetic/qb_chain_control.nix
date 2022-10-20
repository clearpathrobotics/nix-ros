{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_chain_control";
  pkgFinal = final.noetic.qb_chain_control;
  src = srcs.qb_chain.qb_chain_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
