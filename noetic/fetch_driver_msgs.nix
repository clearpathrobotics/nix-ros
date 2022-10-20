{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  power_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_driver_msgs";
  pkgFinal = final.noetic.fetch_driver_msgs;
  src = srcs.fetch_msgs.fetch_driver_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    power_msgs
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_runtime
    power_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
