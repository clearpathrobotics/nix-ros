{
  catkin,
  nodelet,
  nodelet_topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nodelet_core";
  pkgFinal = final.noetic.nodelet_core;
  src = srcs.nodelet_core.nodelet_core;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    nodelet
    nodelet_topic_tools
  ];

  colconTestDepends = [
  ];
}
