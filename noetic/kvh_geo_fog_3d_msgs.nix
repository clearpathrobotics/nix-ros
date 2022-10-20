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
  name = "kvh_geo_fog_3d_msgs";
  pkgFinal = final.noetic.kvh_geo_fog_3d_msgs;
  src = srcs.kvh_geo_fog_3d.kvh_geo_fog_3d_msgs;

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
