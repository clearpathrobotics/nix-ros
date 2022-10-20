{
  catkin,
  turtlebot3_autorace_camera,
  turtlebot3_autorace_core,
  turtlebot3_autorace_detect,
  turtlebot3_autorace_driving,
  turtlebot3_autorace_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_autorace_2020";
  pkgFinal = final.noetic.turtlebot3_autorace_2020;
  src = srcs.turtlebot3_autorace_2020.turtlebot3_autorace_2020;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    turtlebot3_autorace_camera
    turtlebot3_autorace_core
    turtlebot3_autorace_detect
    turtlebot3_autorace_driving
    turtlebot3_autorace_msgs
  ];

  colconTestDepends = [
  ];
}
