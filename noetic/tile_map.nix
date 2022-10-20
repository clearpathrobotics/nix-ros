{
  catkin,
  glew,
  jsoncpp,
  mapviz,
  pluginlib,
  qt5,
  roscpp,
  swri_math_util,
  swri_transform_util,
  swri_yaml_util,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tile_map";
  pkgFinal = final.noetic.tile_map;
  src = srcs.mapviz.tile_map;

  colconBuildDepends = [
    catkin
    glew
    jsoncpp
    mapviz
    pluginlib
    qt5.qtbase
    roscpp
    swri_math_util
    swri_transform_util
    swri_yaml_util
    tf
  ];

  colconRunDepends = [
    glew
    jsoncpp
    mapviz
    pluginlib
    qt5.qtbase
    roscpp
    swri_math_util
    swri_transform_util
    swri_yaml_util
    tf
  ];

  colconTestDepends = [
  ];
}
