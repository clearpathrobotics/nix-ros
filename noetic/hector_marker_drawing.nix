{
  catkin,
  eigen,
  roscpp,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_marker_drawing";
  pkgFinal = final.noetic.hector_marker_drawing;
  src = srcs.hector_slam.hector_marker_drawing;

  colconBuildDepends = [
    catkin
    eigen
    roscpp
    visualization_msgs
  ];

  colconRunDepends = [
    eigen
    roscpp
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
