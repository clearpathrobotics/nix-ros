{
  catkin,
  clober_msgs,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober_serial";
  pkgFinal = final.noetic.clober_serial;
  src = srcs.clober.clober_serial;

  colconBuildDepends = [
    catkin
    clober_msgs
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
  ];
}
