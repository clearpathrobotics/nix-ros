{
  catkin,
  mrpt_local_obstacles,
  mrpt_localization,
  mrpt_map,
  mrpt_rawlog,
  mrpt_reactivenav2d,
  mrpt_tutorials,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_navigation";
  pkgFinal = final.noetic.mrpt_navigation;
  src = srcs.mrpt_navigation.mrpt_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    mrpt_local_obstacles
    mrpt_localization
    mrpt_map
    mrpt_rawlog
    mrpt_reactivenav2d
    mrpt_tutorials
  ];

  colconTestDepends = [
  ];
}
