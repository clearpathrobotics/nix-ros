{
  catkin,
  rosconsole,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosfmt";
  pkgFinal = final.noetic.rosfmt;
  src = srcs.rosfmt.rosfmt;

  colconBuildDepends = [
    catkin
    rosconsole
    roscpp
  ];

  colconRunDepends = [
    rosconsole
    roscpp
  ];

  colconTestDepends = [
  ];
}
