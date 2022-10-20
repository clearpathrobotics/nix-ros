{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_reflector_referencing";
  pkgFinal = final.noetic.cob_reflector_referencing;
  src = srcs.cob_substitute.cob_reflector_referencing;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
