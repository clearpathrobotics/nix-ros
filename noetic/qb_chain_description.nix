{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_chain_description";
  pkgFinal = final.noetic.qb_chain_description;
  src = srcs.qb_chain.qb_chain_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
