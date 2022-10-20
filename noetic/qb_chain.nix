{
  catkin,
  qb_chain_control,
  qb_chain_controllers,
  qb_chain_description,
  qb_chain_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_chain";
  pkgFinal = final.noetic.qb_chain;
  src = srcs.qb_chain.qb_chain;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    qb_chain_control
    qb_chain_controllers
    qb_chain_description
    qb_chain_msgs
  ];

  colconTestDepends = [
  ];
}
