{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ipa_differential_docking";
  pkgFinal = final.noetic.ipa_differential_docking;
  src = srcs.cob_substitute.ipa_differential_docking;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
