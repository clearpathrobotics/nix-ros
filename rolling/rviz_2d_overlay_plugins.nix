{
  ament_cmake,
  boost,
  rviz_2d_overlay_msgs,
  rviz_common,
  rviz_ogre_vendor,
  rviz_rendering,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_2d_overlay_plugins";
  pkgFinal = final.rolling.rviz_2d_overlay_plugins;
  src = srcs.rviz_2d_overlay_plugins.rviz_2d_overlay_plugins;

  colconBuildDepends = [
    ament_cmake
    boost
    rviz_2d_overlay_msgs
    rviz_common
    rviz_ogre_vendor
    rviz_rendering
    std_msgs
  ];

  colconRunDepends = [
    boost
    rviz_2d_overlay_msgs
    rviz_common
    rviz_ogre_vendor
    rviz_rendering
    std_msgs
  ];

  colconTestDepends = [
  ];
}
