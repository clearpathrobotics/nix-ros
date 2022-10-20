{
  catkin,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "catch_ros";
  pkgFinal = final.noetic.catch_ros;
  src = srcs.catch_ros.catch_ros;

  colconBuildDepends = [
    catkin
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
  ];
}
