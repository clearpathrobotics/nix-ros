{
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "std_srvs";
  pkgFinal = final.noetic.std_srvs;
  src = srcs.ros_comm_msgs.std_srvs;

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
