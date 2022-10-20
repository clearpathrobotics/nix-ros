{
  catkin,
  curl,
  dynamic_reconfigure,
  geometry_msgs,
  message_generation,
  message_runtime,
  rcdiscover,
  roscpp,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_hand_eye_calibration_client";
  pkgFinal = final.noetic.rc_hand_eye_calibration_client;
  src = srcs.rc_visard.rc_hand_eye_calibration_client;

  colconBuildDepends = [
    catkin
    curl
    dynamic_reconfigure
    geometry_msgs
    message_generation
    message_runtime
    rcdiscover
    roscpp
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    curl
    dynamic_reconfigure
    geometry_msgs
    message_generation
    message_runtime
    rcdiscover
    roscpp
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
