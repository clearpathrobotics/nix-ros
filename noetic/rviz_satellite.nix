{
  catkin,
  geographiclib,
  qt5,
  roscpp,
  rviz,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_satellite";
  pkgFinal = final.noetic.rviz_satellite;
  src = srcs.rviz_satellite.rviz_satellite;

  colconBuildDepends = [
    catkin
    geographiclib
    qt5.qtbase
    roscpp
    rviz
    sensor_msgs
    tf2
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    geographiclib
    roscpp
    rviz
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
