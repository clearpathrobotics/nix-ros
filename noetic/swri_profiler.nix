{
  catkin,
  diagnostic_updater,
  rosbridge_server,
  roscpp,
  rospy,
  std_msgs,
  swri_profiler_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_profiler";
  pkgFinal = final.noetic.swri_profiler;
  src = srcs.swri_profiler.swri_profiler;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    roscpp
    rospy
    std_msgs
    swri_profiler_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    rosbridge_server
    roscpp
    rospy
    std_msgs
    swri_profiler_msgs
  ];

  colconTestDepends = [
  ];
}
