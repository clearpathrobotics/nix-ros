{
  actionlib,
  catkin,
  geometry_msgs,
  pr2_controllers_msgs,
  roscpp,
  roslaunch,
  rospy,
  rostest,
  std_msgs,
  tf,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_teleop";
  pkgFinal = final.noetic.pr2_teleop;
  src = srcs.pr2_apps.pr2_teleop;

  colconBuildDepends = [
    actionlib
    catkin
    geometry_msgs
    pr2_controllers_msgs
    roscpp
    rospy
    std_msgs
    tf
    topic_tools
  ];

  colconRunDepends = [
    actionlib
    geometry_msgs
    pr2_controllers_msgs
    roscpp
    rospy
    std_msgs
    tf
    topic_tools
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
