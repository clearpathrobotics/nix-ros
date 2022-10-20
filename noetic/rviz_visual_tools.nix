{
  catkin,
  eigen_stl_containers,
  geometry_msgs,
  graph_msgs,
  interactive_markers,
  ogre1_9,
  qt5,
  roscpp,
  roslint,
  rostest,
  rosunit,
  rviz,
  sensor_msgs,
  shape_msgs,
  std_msgs,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,
  trajectory_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_visual_tools";
  pkgFinal = final.noetic.rviz_visual_tools;
  src = srcs.rviz_visual_tools.rviz_visual_tools;

  colconBuildDepends = [
    catkin
    eigen_stl_containers
    geometry_msgs
    graph_msgs
    interactive_markers
    ogre1_9
    qt5.qtx11extras
    roscpp
    roslint
    rviz
    sensor_msgs
    shape_msgs
    std_msgs
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    eigen_stl_containers
    geometry_msgs
    graph_msgs
    interactive_markers
    ogre1_9
    qt5.qtx11extras
    roscpp
    roslint
    rviz
    sensor_msgs
    shape_msgs
    std_msgs
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    rostest
    rosunit
  ];
}
