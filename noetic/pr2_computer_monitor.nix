{
  catkin,
  diagnostic_msgs,
  pr2_msgs,
  roscpp,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_computer_monitor";
  pkgFinal = final.noetic.pr2_computer_monitor;
  src = srcs.pr2_robot.pr2_computer_monitor;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    pr2_msgs
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    pr2_msgs
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
