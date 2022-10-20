{
  catkin,
  eigen,
  geometry_msgs,
  mesh_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_msgs_transform";
  pkgFinal = final.noetic.mesh_msgs_transform;
  src = srcs.mesh_tools.mesh_msgs_transform;

  colconBuildDepends = [
    catkin
    eigen
    geometry_msgs
    mesh_msgs
    tf
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    mesh_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
