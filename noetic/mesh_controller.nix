{
  catkin,
  dynamic_reconfigure,
  mbf_mesh_core,
  mbf_msgs,
  mbf_utility,
  mesh_map,
  roscpp,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_controller";
  pkgFinal = final.noetic.mesh_controller;
  src = srcs.mesh_navigation.mesh_controller;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    mbf_mesh_core
    mbf_msgs
    mbf_utility
    mesh_map
    roscpp
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    mbf_mesh_core
    mbf_msgs
    mbf_utility
    mesh_map
    roscpp
    tf2_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
