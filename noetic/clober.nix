{
  catkin,
  clober_bringup,
  clober_description,
  clober_navigation,
  clober_simulation,
  clober_slam,
  clober_teleop,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober";
  pkgFinal = final.noetic.clober;
  src = srcs.clober.clober;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    clober_bringup
    clober_description
    clober_navigation
    clober_simulation
    clober_slam
    clober_teleop
  ];

  colconTestDepends = [
  ];
}
