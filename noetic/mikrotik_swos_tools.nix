{
  catkin,
  message_generation,
  message_runtime,
  python3Packages,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mikrotik_swos_tools";
  pkgFinal = final.noetic.mikrotik_swos_tools;
  src = srcs.mikrotik_swos_tools.mikrotik_swos_tools;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    python3Packages.requests
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
