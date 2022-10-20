{
  catkin,
  dynamic_reconfigure,
  mbf_abstract_nav,
  mbf_mesh_core,
  mesh_map,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_mesh_nav";
  pkgFinal = final.noetic.mbf_mesh_nav;
  src = srcs.mesh_navigation.mbf_mesh_nav;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    mbf_abstract_nav
    mbf_mesh_core
    mesh_map
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    dynamic_reconfigure
    mbf_abstract_nav
    mbf_mesh_core
    mesh_map
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
