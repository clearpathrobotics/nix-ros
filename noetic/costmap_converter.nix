{
  catkin,
  costmap_2d,
  cv_bridge,
  dynamic_reconfigure,
  geometry_msgs,
  message_generation,
  message_runtime,
  pluginlib,
  roscpp,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "costmap_converter";
  pkgFinal = final.noetic.costmap_converter;
  src = srcs.costmap_converter.costmap_converter;

  colconBuildDepends = [
    catkin
    costmap_2d
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    message_generation
    pluginlib
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    costmap_2d
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    message_runtime
    pluginlib
    roscpp
    std_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
