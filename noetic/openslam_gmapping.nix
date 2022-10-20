{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openslam_gmapping";
  pkgFinal = final.noetic.openslam_gmapping;
  src = srcs.openslam_gmapping.openslam_gmapping;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
