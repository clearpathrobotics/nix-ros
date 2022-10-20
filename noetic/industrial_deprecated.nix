{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_deprecated";
  pkgFinal = final.noetic.industrial_deprecated;
  src = srcs.industrial_core.industrial_deprecated;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
