{
  catkin,
  dynamic_reconfigure,
  message_runtime,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pid";
  pkgFinal = final.noetic.pid;
  src = srcs.pid.pid;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    message_runtime
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    message_runtime
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
