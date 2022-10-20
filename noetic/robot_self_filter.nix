{
  assimp,
  bullet,
  catkin,
  cmake_modules,
  filters,
  pcl_ros,
  resource_retriever,
  roscpp,
  sensor_msgs,
  tf,
  tinyxml,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_self_filter";
  pkgFinal = final.noetic.robot_self_filter;
  src = srcs.robot_self_filter.robot_self_filter;

  colconBuildDepends = [
    assimp
    bullet
    catkin
    cmake_modules
    filters
    pcl_ros
    resource_retriever
    roscpp
    sensor_msgs
    tf
    tinyxml
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
    tinyxml
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
