{
  catkin,
  eigen,
  pcl_ros,
  roscpp,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "semantic_point_annotator";
  pkgFinal = final.noetic.semantic_point_annotator;
  src = srcs.pr2_navigation.semantic_point_annotator;

  colconBuildDepends = [
    catkin
    eigen
    pcl_ros
    roscpp
    tf
  ];

  colconRunDepends = [
    eigen
    pcl_ros
    roscpp
    tf
  ];

  colconTestDepends = [
  ];
}
