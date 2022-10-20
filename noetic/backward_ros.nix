{
  catkin,
  elfutils,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "backward_ros";
  pkgFinal = final.noetic.backward_ros;
  src = srcs.backward_ros.backward_ros;

  colconBuildDepends = [
    catkin
    elfutils
    roscpp
  ];

  colconRunDepends = [
    elfutils
    roscpp
  ];

  colconTestDepends = [
  ];
}
