{
  catkin,
  diagnostic_aggregator,
  diagnostic_msgs,
  pluginlib,
  roscpp,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_diagnostic_aggregator";
  pkgFinal = final.noetic.test_diagnostic_aggregator;
  src = srcs.diagnostics.test_diagnostic_aggregator;

  colconBuildDepends = [
    catkin
    diagnostic_aggregator
    diagnostic_msgs
    pluginlib
    roscpp
    rospy
    rostest
  ];

  colconRunDepends = [
    diagnostic_aggregator
    diagnostic_msgs
    pluginlib
    roscpp
    rospy
  ];

  colconTestDepends = [
  ];
}
