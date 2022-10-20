{
  catkin,
  leo_gazebo,
  leo_gazebo_plugins,
  leo_gazebo_worlds,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_simulator";
  pkgFinal = final.noetic.leo_simulator;
  src = srcs.leo_simulator.leo_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    leo_gazebo
    leo_gazebo_plugins
    leo_gazebo_worlds
  ];

  colconTestDepends = [
  ];
}
