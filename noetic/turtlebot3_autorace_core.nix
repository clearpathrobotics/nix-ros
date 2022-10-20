{
  catkin,
  python3Packages,
  pythonPackages,
  roslaunch,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_autorace_core";
  pkgFinal = final.noetic.turtlebot3_autorace_core;
  src = srcs.turtlebot3_autorace_2020.turtlebot3_autorace_core;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.numpy
    pythonPackages.enum34
    roslaunch
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
