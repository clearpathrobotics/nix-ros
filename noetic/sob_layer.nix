{
  catkin,
  costmap_2d,
  dynamic_reconfigure,
  pluginlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sob_layer";
  pkgFinal = final.noetic.sob_layer;
  src = srcs.sob_layer.sob_layer;

  colconBuildDepends = [
    catkin
    costmap_2d
    dynamic_reconfigure
    pluginlib
  ];

  colconRunDepends = [
    costmap_2d
    dynamic_reconfigure
    pluginlib
  ];

  colconTestDepends = [
  ];
}
