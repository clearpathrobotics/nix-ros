{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_machine";
  pkgFinal = final.noetic.pr2_machine;
  src = srcs.pr2_common.pr2_machine;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
