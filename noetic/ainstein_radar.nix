{
  ainstein_radar_drivers,
  ainstein_radar_filters,
  ainstein_radar_gazebo_plugins,
  ainstein_radar_msgs,
  ainstein_radar_rviz_plugins,
  ainstein_radar_tools,
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ainstein_radar";
  pkgFinal = final.noetic.ainstein_radar;
  src = srcs.ainstein_radar.ainstein_radar;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ainstein_radar_drivers
    ainstein_radar_filters
    ainstein_radar_gazebo_plugins
    ainstein_radar_msgs
    ainstein_radar_rviz_plugins
    ainstein_radar_tools
  ];

  colconTestDepends = [
  ];
}
