{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slam_toolbox_msgs";
  pkgFinal = final.noetic.slam_toolbox_msgs;
  src = srcs.slam_toolbox.slam_toolbox_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
