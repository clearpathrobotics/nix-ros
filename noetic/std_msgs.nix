{
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "std_msgs";
  pkgFinal = final.noetic.std_msgs;
  src = srcs.std_msgs.std_msgs;

  colconBuildDepends = [
    catkin
    message_generation
  ];

  colconRunDepends = [
    message_runtime
  ];

  colconTestDepends = [
  ];
}
