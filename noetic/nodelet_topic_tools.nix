{
  boost,
  catkin,
  dynamic_reconfigure,
  message_filters,
  nodelet,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nodelet_topic_tools";
  pkgFinal = final.noetic.nodelet_topic_tools;
  src = srcs.nodelet_core.nodelet_topic_tools;

  colconBuildDepends = [
    boost
    catkin
    dynamic_reconfigure
  ];

  colconRunDepends = [
    boost
    dynamic_reconfigure
    message_filters
    nodelet
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
