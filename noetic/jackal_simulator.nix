{
  catkin,
  jackal_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jackal_simulator";
  pkgFinal = final.noetic.jackal_simulator;
  src = srcs.jackal_simulator.jackal_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    jackal_gazebo
  ];

  colconTestDepends = [
  ];
}
