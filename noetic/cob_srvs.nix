{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_srvs";
  pkgFinal = final.noetic.cob_srvs;
  src = srcs.cob_common.cob_srvs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
