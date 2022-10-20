{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  image_transport,
  message_generation,
  message_runtime,
  nodelet,
  rc_genicam_api,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_genicam_camera";
  pkgFinal = final.noetic.rc_genicam_camera;
  src = srcs.rc_genicam_camera.rc_genicam_camera;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    image_transport
    message_generation
    nodelet
    rc_genicam_api
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    image_transport
    message_runtime
    nodelet
    rc_genicam_api
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
