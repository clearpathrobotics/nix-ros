{
  catkin,
  turtlebot3_bringup,
  turtlebot3_description,
  turtlebot3_example,
  turtlebot3_navigation,
  turtlebot3_slam,
  turtlebot3_teleop,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3";
  pkgFinal = final.noetic.turtlebot3;
  src = srcs.turtlebot3.turtlebot3;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    turtlebot3_bringup
    turtlebot3_description
    turtlebot3_example
    turtlebot3_navigation
    turtlebot3_slam
    turtlebot3_teleop
  ];

  colconTestDepends = [
  ];
}
