{
  ament_cmake,
  turtlebot3_fake_node,
  turtlebot3_gazebo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_simulations";
  pkgFinal = final.rolling.turtlebot3_simulations;
  src = srcs.turtlebot3_simulations.turtlebot3_simulations;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    turtlebot3_fake_node
    turtlebot3_gazebo
  ];

  colconTestDepends = [
  ];
}
