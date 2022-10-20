{
  boost,
  camera_calibration_parsers,
  catkin,
  gtest,
  image_transport,
  roscpp,
  roslib,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "camera_info_manager";
  pkgFinal = final.noetic.camera_info_manager;
  src = srcs.image_common.camera_info_manager;

  colconBuildDepends = [
    boost
    camera_calibration_parsers
    catkin
    image_transport
    roscpp
    roslib
    rostest
    sensor_msgs
  ];

  colconRunDepends = [
    boost
    camera_calibration_parsers
    image_transport
    roscpp
    roslib
    sensor_msgs
  ];

  colconTestDepends = [
    gtest
  ];
}
