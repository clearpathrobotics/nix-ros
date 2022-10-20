{
  catkin,
  costmap_2d,
  cv_bridge,
  geometry_msgs,
  image_transport,
  nav_msgs,
  pluginlib,
  roscpp,
  sensor_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_depth_layer";
  pkgFinal = final.noetic.fetch_depth_layer;
  src = srcs.fetch_ros.fetch_depth_layer;

  colconBuildDepends = [
    catkin
    costmap_2d
    cv_bridge
    geometry_msgs
    image_transport
    nav_msgs
    pluginlib
    roscpp
    sensor_msgs
    tf2_ros
  ];

  colconRunDepends = [
    costmap_2d
    cv_bridge
    geometry_msgs
    image_transport
    nav_msgs
    pluginlib
    roscpp
    sensor_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
