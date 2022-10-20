{
  camera_calibration_parsers,
  catkin,
  diagnostic_updater,
  driver_base,
  dynamic_reconfigure,
  image_transport,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  rostest,
  self_test,
  sensor_msgs,
  std_msgs,
  timestamp_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "wge100_camera";
  pkgFinal = final.noetic.wge100_camera;
  src = srcs.wge100_driver.wge100_camera;

  colconBuildDepends = [
    camera_calibration_parsers
    catkin
    diagnostic_updater
    driver_base
    dynamic_reconfigure
    image_transport
    message_generation
    roscpp
    rospy
    rostest
    self_test
    sensor_msgs
    std_msgs
    timestamp_tools
  ];

  colconRunDepends = [
    camera_calibration_parsers
    diagnostic_updater
    driver_base
    dynamic_reconfigure
    image_transport
    message_runtime
    roscpp
    rospy
    self_test
    sensor_msgs
    std_msgs
    timestamp_tools
  ];

  colconTestDepends = [
  ];
}
