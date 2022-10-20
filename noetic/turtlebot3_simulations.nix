{
  catkin,
  turtlebot3_fake,
  turtlebot3_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_simulations";
  pkgFinal = final.noetic.turtlebot3_simulations;
  src = srcs.turtlebot3_simulations.turtlebot3_simulations;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    turtlebot3_fake
    turtlebot3_gazebo
  ];

  colconTestDepends = [
  ];
}
