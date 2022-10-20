{
  catkin,
  pr2_mechanism_msgs,
  pr2_tuck_arms_action,
  roslaunch,
  rospy,
  rostest,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_tuckarm";
  pkgFinal = final.noetic.pr2_tuckarm;
  src = srcs.pr2_apps.pr2_tuckarm;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pr2_mechanism_msgs
    pr2_tuck_arms_action
    rospy
    trajectory_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
