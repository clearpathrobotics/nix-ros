{
  catkin,
  gmapping,
  openslam_gmapping,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slam_gmapping";
  pkgFinal = final.noetic.slam_gmapping;
  src = srcs.slam_gmapping.slam_gmapping;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gmapping
    openslam_gmapping
  ];

  colconTestDepends = [
  ];
}
