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
  name = "ubnt_airos_tools";
  pkgFinal = final.noetic.ubnt_airos_tools;
  src = srcs.ubnt_airos_tools.ubnt_airos_tools;

  colconBuildDepends = [
    catkin
    message_generation
    message_runtime
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
