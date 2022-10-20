{
  catkin,
  ridgeback_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ridgeback_simulator";
  pkgFinal = final.noetic.ridgeback_simulator;
  src = srcs.ridgeback_simulator.ridgeback_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ridgeback_gazebo
  ];

  colconTestDepends = [
  ];
}
