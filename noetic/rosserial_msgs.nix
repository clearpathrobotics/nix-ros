{
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_msgs";
  pkgFinal = final.noetic.rosserial_msgs;
  src = srcs.rosserial.rosserial_msgs;

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
