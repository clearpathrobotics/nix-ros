{
  catkin,
  hector_map_tools,
  hector_nav_msgs,
  nav_msgs,
  pluginlib,
  qt5,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_geotiff";
  pkgFinal = final.noetic.hector_geotiff;
  src = srcs.hector_slam.hector_geotiff;

  colconBuildDepends = [
    catkin
    hector_map_tools
    hector_nav_msgs
    nav_msgs
    pluginlib
    qt5.qtbase
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    hector_map_tools
    hector_nav_msgs
    nav_msgs
    pluginlib
    qt5.qtbase
    qt5.qtimageformats
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
