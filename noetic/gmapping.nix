{
  catkin,
  nav_msgs,
  nodelet,
  openslam_gmapping,
  roscpp,
  rostest,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gmapping";
  pkgFinal = final.noetic.gmapping;
  src = srcs.slam_gmapping.gmapping;

  colconBuildDepends = [
    catkin
    nav_msgs
    nodelet
    openslam_gmapping
    roscpp
    rostest
    tf
  ];

  colconRunDepends = [
    nav_msgs
    nodelet
    openslam_gmapping
    roscpp
    tf
  ];

  colconTestDepends = [
  ];
}
