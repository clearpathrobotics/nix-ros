{
  actionlib,
  catkin,
  cv_bridge,
  gps_common,
  image_transport,
  map_msgs,
  mapviz,
  marti_common_msgs,
  marti_nav_msgs,
  marti_sensor_msgs,
  marti_visualization_msgs,
  move_base_msgs,
  nav_msgs,
  pluginlib,
  qt5,
  roscpp,
  sensor_msgs,
  std_msgs,
  stereo_msgs,
  swri_image_util,
  swri_math_util,
  swri_route_util,
  swri_transform_util,
  swri_yaml_util,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mapviz_plugins";
  pkgFinal = final.noetic.mapviz_plugins;
  src = srcs.mapviz.mapviz_plugins;

  colconBuildDepends = [
    actionlib
    catkin
    cv_bridge
    gps_common
    image_transport
    map_msgs
    mapviz
    marti_common_msgs
    marti_nav_msgs
    marti_sensor_msgs
    marti_visualization_msgs
    move_base_msgs
    nav_msgs
    pluginlib
    qt5.qtbase
    roscpp
    sensor_msgs
    std_msgs
    stereo_msgs
    swri_image_util
    swri_math_util
    swri_route_util
    swri_transform_util
    swri_yaml_util
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    cv_bridge
    gps_common
    image_transport
    map_msgs
    mapviz
    marti_common_msgs
    marti_nav_msgs
    marti_sensor_msgs
    marti_visualization_msgs
    move_base_msgs
    nav_msgs
    pluginlib
    qt5.qtbase
    roscpp
    sensor_msgs
    std_msgs
    stereo_msgs
    swri_image_util
    swri_math_util
    swri_route_util
    swri_transform_util
    swri_yaml_util
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
