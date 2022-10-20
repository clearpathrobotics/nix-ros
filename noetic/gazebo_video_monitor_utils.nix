{
  catkin,
  gazebo_msgs,
  rospy,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_video_monitor_utils";
  pkgFinal = final.noetic.gazebo_video_monitor_utils;
  src = srcs.gazebo_video_monitors.gazebo_video_monitor_utils;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_msgs
    rospy
    std_srvs
  ];

  colconTestDepends = [
  ];
}
