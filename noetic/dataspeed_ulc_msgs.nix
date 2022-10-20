{
  catkin,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_ulc_msgs";
  pkgFinal = final.noetic.dataspeed_ulc_msgs;
  src = srcs.dataspeed_ulc_ros.dataspeed_ulc_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
