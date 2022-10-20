{
  camera_calibration_parsers,
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  dynamic_reconfigure,
  image_transport,
  nodelet,
  nodelet_topic_tools,
  polled_camera,
  prosilica_gige_sdk,
  rosconsole,
  roscpp,
  self_test,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "prosilica_camera";
  pkgFinal = final.noetic.prosilica_camera;
  src = srcs.prosilica_driver.prosilica_camera;

  colconBuildDepends = [
    camera_calibration_parsers
    catkin
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    image_transport
    nodelet
    nodelet_topic_tools
    polled_camera
    prosilica_gige_sdk
    rosconsole
    roscpp
    self_test
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    camera_calibration_parsers
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    image_transport
    nodelet
    nodelet_topic_tools
    polled_camera
    prosilica_gige_sdk
    roscpp
    self_test
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
