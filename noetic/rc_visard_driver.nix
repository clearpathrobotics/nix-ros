{
  catkin,
  curl,
  diagnostic_updater,
  dynamic_reconfigure,
  geometry_msgs,
  image_transport,
  message_generation,
  message_runtime,
  nav_msgs,
  nodelet,
  protobuf,
  rc_common_msgs,
  rc_dynamics_api,
  rc_genicam_api,
  roscpp,
  sensor_msgs,
  stereo_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_visard_driver";
  pkgFinal = final.noetic.rc_visard_driver;
  src = srcs.rc_visard.rc_visard_driver;

  colconBuildDepends = [
    catkin
    curl
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    image_transport
    message_generation
    nav_msgs
    nodelet
    protobuf
    rc_common_msgs
    rc_dynamics_api
    rc_genicam_api
    roscpp
    sensor_msgs
    stereo_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    curl
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    image_transport
    message_runtime
    nav_msgs
    nodelet
    protobuf
    rc_common_msgs
    rc_dynamics_api
    rc_genicam_api
    roscpp
    sensor_msgs
    stereo_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
