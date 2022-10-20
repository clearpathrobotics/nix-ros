{
  catkin,
  message_generation,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "uavcan_msgs";
  pkgFinal = final.noetic.uavcan_msgs;
  src = srcs.uavcan_communicator.uavcan_msgs;

  colconBuildDepends = [
    catkin
    message_generation
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
