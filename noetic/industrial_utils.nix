{
  catkin,
  roscpp,
  rosunit,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_utils";
  pkgFinal = final.noetic.industrial_utils;
  src = srcs.industrial_core.industrial_utils;

  colconBuildDepends = [
    catkin
    roscpp
    urdf
  ];

  colconRunDepends = [
    roscpp
    urdf
  ];

  colconTestDepends = [
    rosunit
  ];
}
