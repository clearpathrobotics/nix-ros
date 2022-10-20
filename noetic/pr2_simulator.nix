{
  catkin,
  pr2_controller_configuration_gazebo,
  pr2_gazebo,
  pr2_gazebo_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_simulator";
  pkgFinal = final.noetic.pr2_simulator;
  src = srcs.pr2_simulator.pr2_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pr2_controller_configuration_gazebo
    pr2_gazebo
    pr2_gazebo_plugins
  ];

  colconTestDepends = [
  ];
}
