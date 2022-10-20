{
  catkin,
  open_manipulator_p_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "open_manipulator_p_simulations";
  pkgFinal = final.noetic.open_manipulator_p_simulations;
  src = srcs.open_manipulator_p_simulations.open_manipulator_p_simulations;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    open_manipulator_p_gazebo
  ];

  colconTestDepends = [
  ];
}
