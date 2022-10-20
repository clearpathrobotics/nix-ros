{
  angles,
  catkin,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "graceful_controller";
  pkgFinal = final.noetic.graceful_controller;
  src = srcs.graceful_controller.graceful_controller;

  colconBuildDepends = [
    angles
    catkin
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
  ];
}
