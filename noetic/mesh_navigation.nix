{
  catkin,
  cvp_mesh_planner,
  dijkstra_mesh_planner,
  mbf_mesh_core,
  mbf_mesh_nav,
  mesh_client,
  mesh_controller,
  mesh_layers,
  mesh_map,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_navigation";
  pkgFinal = final.noetic.mesh_navigation;
  src = srcs.mesh_navigation.mesh_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cvp_mesh_planner
    dijkstra_mesh_planner
    mbf_mesh_core
    mbf_mesh_nav
    mesh_client
    mesh_controller
    mesh_layers
    mesh_map
  ];

  colconTestDepends = [
  ];
}
