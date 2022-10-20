{
  aruco_detect,
  catkin,
  fiducial_msgs,
  fiducial_slam,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fiducials";
  pkgFinal = final.noetic.fiducials;
  src = srcs.fiducials.fiducials;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    aruco_detect
    fiducial_msgs
    fiducial_slam
  ];

  colconTestDepends = [
  ];
}
