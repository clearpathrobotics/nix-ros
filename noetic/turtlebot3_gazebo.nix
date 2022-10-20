{
  catkin,
  gazebo,
  gazebo_ros,
  geometry_msgs,
  nav_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,
  turtlebot3_description,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_gazebo";
  pkgFinal = final.noetic.turtlebot3_gazebo;
  src = srcs.turtlebot3_simulations.turtlebot3_gazebo;

  colconBuildDepends = [
    catkin
    gazebo_ros
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    gazebo
    gazebo_ros
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
    turtlebot3_description
  ];

  colconTestDepends = [
  ];
}
