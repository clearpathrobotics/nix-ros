{
  catkin,
  curl,
  diagnostic_updater,
  dynamic_reconfigure,
  geometry_msgs,
  image_transport,
  message_generation,
  message_runtime,
  nodelet,
  protobuf,
  rc_common_msgs,
  rc_genicam_api,
  roscpp,
  sensor_msgs,
  stereo_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_genicam_driver";
  pkgFinal = final.noetic.rc_genicam_driver;
  src = srcs.rc_genicam_driver.rc_genicam_driver;

  colconBuildDepends = [
    catkin
    curl
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    image_transport
    message_generation
    nodelet
    protobuf
    rc_common_msgs
    rc_genicam_api
    roscpp
    sensor_msgs
    stereo_msgs
    tf
  ];

  colconRunDepends = [
    curl
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    image_transport
    message_runtime
    nodelet
    protobuf
    rc_common_msgs
    rc_genicam_api
    roscpp
    sensor_msgs
    stereo_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
