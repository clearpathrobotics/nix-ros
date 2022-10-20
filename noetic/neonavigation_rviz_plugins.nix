{
  catkin,
  trajectory_tracker_rviz_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "neonavigation_rviz_plugins";
  pkgFinal = final.noetic.neonavigation_rviz_plugins;
  src = srcs.neonavigation_rviz_plugins.neonavigation_rviz_plugins;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    trajectory_tracker_rviz_plugins
  ];

  colconTestDepends = [
  ];
}
