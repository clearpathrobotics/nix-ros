{
  catkin,
  cob_bringup_sim,
  cob_gazebo,
  cob_gazebo_objects,
  cob_gazebo_tools,
  cob_gazebo_worlds,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_simulation";
  pkgFinal = final.noetic.cob_simulation;
  src = srcs.cob_simulation.cob_simulation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_bringup_sim
    cob_gazebo
    cob_gazebo_objects
    cob_gazebo_tools
    cob_gazebo_worlds
  ];

  colconTestDepends = [
  ];
}
