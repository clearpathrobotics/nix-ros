{
  catkin,
  open_manipulator_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "open_manipulator_simulations";
  pkgFinal = final.noetic.open_manipulator_simulations;
  src = srcs.open_manipulator_simulations.open_manipulator_simulations;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    open_manipulator_gazebo
  ];

  colconTestDepends = [
  ];
}
