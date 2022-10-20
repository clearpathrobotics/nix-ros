{
  catkin,
  message_generation,
  message_runtime,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_video_monitor_msgs";
  pkgFinal = final.noetic.gazebo_video_monitor_msgs;
  src = srcs.gazebo_video_monitors.gazebo_video_monitor_msgs;

  colconBuildDepends = [
    catkin
    message_generation
  ];

  colconRunDepends = [
    message_runtime
    std_srvs
  ];

  colconTestDepends = [
  ];
}
