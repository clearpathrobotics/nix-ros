{
  catkin,
  dynamic_reconfigure,
  mbf_mesh_core,
  mbf_msgs,
  mbf_utility,
  mesh_map,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cvp_mesh_planner";
  pkgFinal = final.noetic.cvp_mesh_planner;
  src = srcs.mesh_navigation.cvp_mesh_planner;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    mbf_mesh_core
    mbf_msgs
    mbf_utility
    mesh_map
    roscpp
  ];

  colconRunDepends = [
    dynamic_reconfigure
    mbf_mesh_core
    mbf_msgs
    mbf_utility
    mesh_map
    roscpp
  ];

  colconTestDepends = [
  ];
}
