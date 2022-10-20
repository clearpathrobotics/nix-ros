{
  catkin,
  geometry_msgs,
  nav_msgs,
  roscpp,
  sensor_msgs,
  tf,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "message_to_tf";
  pkgFinal = final.noetic.message_to_tf;
  src = srcs.hector_localization.message_to_tf;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf
    topic_tools
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf
    topic_tools
  ];

  colconTestDepends = [
  ];
}
