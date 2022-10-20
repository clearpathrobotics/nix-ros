{
  app_manager,
  catkin,
  roslaunch,
  rostest,
  willow_maps,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_app_manager";
  pkgFinal = final.noetic.pr2_app_manager;
  src = srcs.pr2_apps.pr2_app_manager;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    app_manager
    willow_maps
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
