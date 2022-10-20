{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  interactive_markers,
  message_generation,
  message_runtime,
  nav_msgs,
  rospy,
  sensor_msgs,
  std_msgs,
  turtlebot3_bringup,
  turtlebot3_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_example";
  pkgFinal = final.noetic.turtlebot3_example;
  src = srcs.turtlebot3.turtlebot3_example;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    interactive_markers
    message_generation
    nav_msgs
    rospy
    sensor_msgs
    std_msgs
    turtlebot3_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    interactive_markers
    message_runtime
    nav_msgs
    rospy
    sensor_msgs
    std_msgs
    turtlebot3_bringup
    turtlebot3_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
