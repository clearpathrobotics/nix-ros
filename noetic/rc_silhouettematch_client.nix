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
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_silhouettematch_client";
  pkgFinal = final.noetic.rc_silhouettematch_client;
  src = srcs.rc_visard.rc_silhouettematch_client;

  colconBuildDepends = [
    catkin
    curl
    dynamic_reconfigure
    geometry_msgs
    message_generation
    rc_common_msgs
    rcdiscover
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
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
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
