{
  catkin,
  curl,
  dynamic_reconfigure,
  geometry_msgs,
  message_generation,
  message_runtime,
  rc_common_msgs,
  rcdiscover,
  roscpp,
  std_srvs,
  tf,
  tf2_geometry_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_pick_client";
  pkgFinal = final.noetic.rc_pick_client;
  src = srcs.rc_visard.rc_pick_client;

  colconBuildDepends = [
    catkin
    curl
    dynamic_reconfigure
    geometry_msgs
    message_generation
    rc_common_msgs
    rcdiscover
    roscpp
    std_srvs
    tf
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    curl
    dynamic_reconfigure
    geometry_msgs
    message_runtime
    rc_common_msgs
    rcdiscover
    roscpp
    std_srvs
    tf
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
