{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober_teleop";
  pkgFinal = final.noetic.clober_teleop;
  src = srcs.clober.clober_teleop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
