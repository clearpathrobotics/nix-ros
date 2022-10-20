{
  catkin,
  eigen,
  qt5,
  roscpp,
  rviz,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "agni_tf_tools";
  pkgFinal = final.noetic.agni_tf_tools;
  src = srcs.agni_tf_tools.agni_tf_tools;

  colconBuildDepends = [
    catkin
    eigen
    qt5.qtbase
    roscpp
    rviz
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    roscpp
    rviz
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
