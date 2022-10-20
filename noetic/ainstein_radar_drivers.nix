{
  ainstein_radar_filters,
  ainstein_radar_msgs,
  can_msgs,
  catkin,
  message_generation,
  message_runtime,
  nodelet,
  roscpp,
  rviz_visual_tools,
  socketcan_bridge,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ainstein_radar_drivers";
  pkgFinal = final.noetic.ainstein_radar_drivers;
  src = srcs.ainstein_radar.ainstein_radar_drivers;

  colconBuildDepends = [
    ainstein_radar_filters
    ainstein_radar_msgs
    can_msgs
    catkin
    message_generation
    nodelet
    roscpp
    rviz_visual_tools
    socketcan_bridge
    std_msgs
  ];

  colconRunDepends = [
    ainstein_radar_filters
    ainstein_radar_msgs
    can_msgs
    message_runtime
    nodelet
    roscpp
    socketcan_bridge
    std_msgs
  ];

  colconTestDepends = [
  ];
}
