{
  catkin,
  gazebo_ros,
  gazebo_video_monitor_msgs,
  libyamlcpp,
  opencv,
  roscpp,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_video_monitor_plugins";
  pkgFinal = final.noetic.gazebo_video_monitor_plugins;
  src = srcs.gazebo_video_monitors.gazebo_video_monitor_plugins;

  colconBuildDepends = [
    catkin
    gazebo_ros
    gazebo_video_monitor_msgs
    libyamlcpp
    opencv
    roscpp
    std_srvs
  ];

  colconRunDepends = [
    gazebo_ros
    gazebo_video_monitor_msgs
    opencv
    roscpp
    std_srvs
  ];

  colconTestDepends = [
  ];
}
