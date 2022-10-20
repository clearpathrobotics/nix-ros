{
  catkin,
  hdf5_map_io,
  label_manager,
  mesh_msgs,
  mesh_msgs_conversions,
  mesh_msgs_transform,
  rviz_map_plugin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_tools";
  pkgFinal = final.noetic.mesh_tools;
  src = srcs.mesh_tools.mesh_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    hdf5_map_io
    label_manager
    mesh_msgs
    mesh_msgs_conversions
    mesh_msgs_transform
    rviz_map_plugin
  ];

  colconTestDepends = [
  ];
}
