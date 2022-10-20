{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_safety_controller";
  pkgFinal = final.noetic.cob_safety_controller;
  src = srcs.cob_substitute.cob_safety_controller;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
