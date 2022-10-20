{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  geometry_msgs,
  move_base_msgs,
  nav_msgs,
  python3Packages,
  pythonPackages,
  rospy,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_autorace_detect";
  pkgFinal = final.noetic.turtlebot3_autorace_detect;
  src = srcs.turtlebot3_autorace_2020.turtlebot3_autorace_detect;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    move_base_msgs
    nav_msgs
    python3Packages.numpy
    python3Packages.opencv3
    pythonPackages.enum34
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
