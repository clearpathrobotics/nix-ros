{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  mesh_client,
  mesh_msgs_conversions,
  pluginlib,
  roscpp,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_map";
  pkgFinal = final.noetic.mesh_map;
  src = srcs.mesh_navigation.mesh_map;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    mesh_client
    mesh_msgs_conversions
    pluginlib
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    mesh_client
    mesh_msgs_conversions
    pluginlib
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
