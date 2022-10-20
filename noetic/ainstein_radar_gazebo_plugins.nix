{
  ainstein_radar_msgs,
  catkin,
  gazebo_plugins,
  gazebo_ros,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ainstein_radar_gazebo_plugins";
  pkgFinal = final.noetic.ainstein_radar_gazebo_plugins;
  src = srcs.ainstein_radar.ainstein_radar_gazebo_plugins;

  colconBuildDepends = [
    ainstein_radar_msgs
    catkin
    gazebo_plugins
    gazebo_ros
    roscpp
  ];

  colconRunDepends = [
    ainstein_radar_msgs
    gazebo_plugins
    gazebo_ros
    roscpp
  ];

  colconTestDepends = [
  ];
}
