{
  catkin,
  message_generation,
  message_runtime,
  python3Packages,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fkie_multimaster_msgs";
  pkgFinal = final.noetic.fkie_multimaster_msgs;
  src = srcs.fkie_multimaster.fkie_multimaster_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    python3Packages.grpcio-tools
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
