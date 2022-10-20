{
  catkin,
  cob_linear_nav,
  cob_map_accessibility_analysis,
  cob_mapping_slam,
  cob_navigation_config,
  cob_navigation_global,
  cob_navigation_local,
  cob_navigation_slam,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_navigation";
  pkgFinal = final.noetic.cob_navigation;
  src = srcs.cob_navigation.cob_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_linear_nav
    cob_map_accessibility_analysis
    cob_mapping_slam
    cob_navigation_config
    cob_navigation_global
    cob_navigation_local
    cob_navigation_slam
  ];

  colconTestDepends = [
  ];
}
