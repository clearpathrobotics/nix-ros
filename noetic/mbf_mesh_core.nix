{
  catkin,
  mbf_abstract_core,
  mesh_map,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_mesh_core";
  pkgFinal = final.noetic.mbf_mesh_core;
  src = srcs.mesh_navigation.mbf_mesh_core;

  colconBuildDepends = [
    catkin
    mbf_abstract_core
    mesh_map
  ];

  colconRunDepends = [
    mbf_abstract_core
    mesh_map
  ];

  colconTestDepends = [
  ];
}
