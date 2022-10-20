{
  catkin,
  prbt_pg70_support,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "prbt_grippers";
  pkgFinal = final.noetic.prbt_grippers;
  src = srcs.prbt_grippers.prbt_grippers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    prbt_pg70_support
  ];

  colconTestDepends = [
  ];
}
