{
  catkin,
  gazebo_video_monitor_msgs,
  gazebo_video_monitor_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_video_monitors";
  pkgFinal = final.noetic.gazebo_video_monitors;
  src = srcs.gazebo_video_monitors.gazebo_video_monitors;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_video_monitor_msgs
    gazebo_video_monitor_plugins
  ];

  colconTestDepends = [
  ];
}
