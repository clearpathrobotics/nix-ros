{
  catkin,
  roscpp,
  sensor_msgs,
  turtlebot3_bringup,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_slam";
  pkgFinal = final.noetic.turtlebot3_slam;
  src = srcs.turtlebot3.turtlebot3_slam;

  colconBuildDepends = [
    catkin
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    roscpp
    sensor_msgs
    turtlebot3_bringup
  ];

  colconTestDepends = [
  ];
}
