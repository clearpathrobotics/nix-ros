{
  catkin,
  husky_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "husky_simulator";
  pkgFinal = final.noetic.husky_simulator;
  src = srcs.husky.husky_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    husky_gazebo
  ];

  colconTestDepends = [
  ];
}
