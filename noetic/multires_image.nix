{
  catkin,
  cv_bridge,
  geometry_msgs,
  gps_common,
  mapviz,
  pluginlib,
  qt5,
  roscpp,
  rospy,
  swri_math_util,
  swri_transform_util,
  swri_yaml_util,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multires_image";
  pkgFinal = final.noetic.multires_image;
  src = srcs.mapviz.multires_image;

  colconBuildDepends = [
    catkin
    cv_bridge
    geometry_msgs
    gps_common
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
    cv_bridge
    geometry_msgs
    gps_common
    mapviz
    pluginlib
    qt5.qtbase
    roscpp
    rospy
    swri_math_util
    swri_transform_util
    swri_yaml_util
    tf
  ];

  colconTestDepends = [
  ];
}
