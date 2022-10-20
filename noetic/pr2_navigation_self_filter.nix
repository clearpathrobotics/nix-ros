{
  assimp,
  bullet,
  catkin,
  filters,
  pcl_ros,
  resource_retriever,
  roscpp,
  sensor_msgs,
  tf,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_navigation_self_filter";
  pkgFinal = final.noetic.pr2_navigation_self_filter;
  src = srcs.pr2_navigation.pr2_navigation_self_filter;

  colconBuildDepends = [
    assimp
    bullet
    catkin
    filters
    pcl_ros
    resource_retriever
    roscpp
    sensor_msgs
    tf
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    assimp
    bullet
    filters
    pcl_ros
    resource_retriever
    roscpp
    sensor_msgs
    tf
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
