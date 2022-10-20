{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober_bringup";
  pkgFinal = final.noetic.clober_bringup;
  src = srcs.clober.clober_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
