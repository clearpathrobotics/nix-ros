{
  catkin,
  hdf5_map_io,
  label_manager,
  mesh_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_msgs_hdf5";
  pkgFinal = final.noetic.mesh_msgs_hdf5;
  src = srcs.mesh_tools.mesh_msgs_hdf5;

  colconBuildDepends = [
    catkin
    hdf5_map_io
    label_manager
    mesh_msgs
  ];

  colconRunDepends = [
    hdf5_map_io
    label_manager
    mesh_msgs
  ];

  colconTestDepends = [
  ];
}
