{
  actionlib,
  actionlib_msgs,
  calibration_msgs,
  catkin,
  cv_bridge,
  geometry_msgs,
  image_transport,
  message_filters,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_cb_detector";
  pkgFinal = final.noetic.image_cb_detector;
  src = srcs.calibration.image_cb_detector;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    calibration_msgs
    catkin
    cv_bridge
    geometry_msgs
    image_transport
    message_filters
    message_generation
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    calibration_msgs
    cv_bridge
    geometry_msgs
    image_transport
    message_filters
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
