{
  catkin,
  geometry_msgs,
  nav_msgs,
  robot_state_publisher,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,
  turtlebot3_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_fake";
  pkgFinal = final.noetic.turtlebot3_fake;
  src = srcs.turtlebot3_simulations.turtlebot3_fake;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
    turtlebot3_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    robot_state_publisher
    roscpp
    sensor_msgs
    std_msgs
    tf
    turtlebot3_msgs
  ];

  colconTestDepends = [
  ];
}
