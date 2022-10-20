{
  actionlib,
  catkin,
  pr2_controllers_msgs,
  roslaunch,
  rospy,
  rostest,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_position_scripts";
  pkgFinal = final.noetic.pr2_position_scripts;
  src = srcs.pr2_apps.pr2_position_scripts;

  colconBuildDepends = [
    actionlib
    catkin
    pr2_controllers_msgs
    rospy
    tf
  ];

  colconRunDepends = [
    actionlib
    pr2_controllers_msgs
    rospy
    tf
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
