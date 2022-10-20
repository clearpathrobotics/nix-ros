{
  boost,
  catkin,
  lvr2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hdf5_map_io";
  pkgFinal = final.noetic.hdf5_map_io;
  src = srcs.mesh_tools.hdf5_map_io;

  colconBuildDepends = [
    boost
    catkin
    lvr2
  ];

  colconRunDepends = [
    boost
    lvr2
  ];

  colconTestDepends = [
  ];
}
