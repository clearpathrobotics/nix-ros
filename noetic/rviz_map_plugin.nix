{
  catkin,
  hdf5_map_io,
  mesh_msgs,
  opencl-headers,
  qt5,
  roscpp,
  rviz,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_map_plugin";
  pkgFinal = final.noetic.rviz_map_plugin;
  src = srcs.mesh_tools.rviz_map_plugin;

  colconBuildDepends = [
    catkin
    hdf5_map_io
    mesh_msgs
    opencl-headers
    qt5.qtbase
    roscpp
    rviz
    std_msgs
  ];

  colconRunDepends = [
    hdf5_map_io
    mesh_msgs
    opencl-headers
    qt5.qtbase
    roscpp
    rviz
    std_msgs
  ];

  colconTestDepends = [
  ];
}
