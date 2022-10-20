{
  bondcpp,
  bondpy,
  catkin,
  diagnostic_msgs,
  pluginlib,
  roscpp,
  rospy,
  rostest,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diagnostic_aggregator";
  pkgFinal = final.noetic.diagnostic_aggregator;
  src = srcs.diagnostics.diagnostic_aggregator;

  colconBuildDepends = [
    bondcpp
    bondpy
    catkin
    diagnostic_msgs
    pluginlib
    roscpp
    rospy
    rostest
    xmlrpcpp
  ];

  colconRunDepends = [
    bondcpp
    bondpy
    diagnostic_msgs
    pluginlib
    roscpp
    rospy
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
