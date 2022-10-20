{
  catkin,
  geometry_msgs,
  nav_msgs,
  python3Packages,
  pythonPackages,
  rospy,
  sensor_msgs,
  std_msgs,
  tf,
  turtlebot3_autorace_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_autorace_driving";
  pkgFinal = final.noetic.turtlebot3_autorace_driving;
  src = srcs.turtlebot3_autorace_2020.turtlebot3_autorace_driving;

  colconBuildDepends = [
    catkin
    turtlebot3_autorace_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    python3Packages.numpy
    pythonPackages.enum34
    rospy
    sensor_msgs
    std_msgs
    tf
    turtlebot3_autorace_msgs
  ];

  colconTestDepends = [
  ];
}
