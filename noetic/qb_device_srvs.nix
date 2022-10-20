{
  catkin,
  message_generation,
  message_runtime,
  qb_device_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device_srvs";
  pkgFinal = final.noetic.qb_device_srvs;
  src = srcs.qb_device.qb_device_srvs;

  colconBuildDepends = [
    catkin
    message_generation
    qb_device_msgs
    std_srvs
  ];

  colconRunDepends = [
    message_runtime
    qb_device_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
