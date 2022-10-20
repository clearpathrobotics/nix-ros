{
  catkin,
  dynamic_reconfigure,
  mesh_map,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_layers";
  pkgFinal = final.noetic.mesh_layers;
  src = srcs.mesh_navigation.mesh_layers;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    mesh_map
  ];

  colconRunDepends = [
    dynamic_reconfigure
    mesh_map
  ];

  colconTestDepends = [
  ];
}
