{
  catkin,
  genmsg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roslang";
  pkgFinal = final.noetic.roslang;
  src = srcs.ros.roslang;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    catkin
    genmsg
  ];

  colconTestDepends = [
  ];
}
