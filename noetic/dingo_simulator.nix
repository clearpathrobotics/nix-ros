{
  catkin,
  dingo_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dingo_simulator";
  pkgFinal = final.noetic.dingo_simulator;
  src = srcs.dingo_simulator.dingo_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dingo_gazebo
  ];

  colconTestDepends = [
  ];
}
