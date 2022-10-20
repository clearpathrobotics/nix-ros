{
  catkin,
  roscpp,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "voxel_grid";
  pkgFinal = final.noetic.voxel_grid;
  src = srcs.navigation.voxel_grid;

  colconBuildDepends = [
    catkin
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
    rosunit
  ];
}
