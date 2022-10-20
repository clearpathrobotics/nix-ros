{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pincher_arm_description";
  pkgFinal = final.noetic.pincher_arm_description;
  src = srcs.pincher_arm.pincher_arm_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
