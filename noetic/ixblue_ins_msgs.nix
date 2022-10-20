{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ixblue_ins_msgs";
  pkgFinal = final.noetic.ixblue_ins_msgs;
  src = srcs.ixblue_ins_stdbin_driver.ixblue_ins_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
