{
  catkin,
  warthog_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warthog_simulator";
  pkgFinal = final.noetic.warthog_simulator;
  src = srcs.warthog_simulator.warthog_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    warthog_gazebo
  ];

  colconTestDepends = [
  ];
}
