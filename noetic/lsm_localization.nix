{
  catkin,
  csm,
  geometry_msgs,
  message_runtime,
  nav_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lsm_localization";
  pkgFinal = final.noetic.lsm_localization;
  src = srcs.lsm_localization.lsm_localization;

  colconBuildDepends = [
    catkin
    csm
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    csm
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
