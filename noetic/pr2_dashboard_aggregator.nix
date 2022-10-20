{
  catkin,
  pr2_msgs,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_dashboard_aggregator";
  pkgFinal = final.noetic.pr2_dashboard_aggregator;
  src = srcs.pr2_common.pr2_dashboard_aggregator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pr2_msgs
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
