{
  boost,
  catkin,
  pluginlib,
  rosconsole,
  roscpp,
  roslib,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "filters";
  pkgFinal = final.noetic.filters;
  src = srcs.filters.filters;

  colconBuildDepends = [
    boost
    catkin
    pluginlib
    rosconsole
    roscpp
    roslib
    rostest
  ];

  colconRunDepends = [
    boost
    pluginlib
    rosconsole
    roscpp
    roslib
  ];

  colconTestDepends = [
  ];
}
