{
  boost,
  catkin,
  libyamlcpp,
  pkg-config,
  rosbash,
  rosconsole,
  roscpp,
  roscpp_serialization,
  rosunit,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "camera_calibration_parsers";
  pkgFinal = final.noetic.camera_calibration_parsers;
  src = srcs.image_common.camera_calibration_parsers;

  colconBuildDepends = [
    boost
    catkin
    libyamlcpp
    pkg-config
    rosconsole
    roscpp
    roscpp_serialization
    sensor_msgs
  ];

  colconRunDepends = [
    boost
    libyamlcpp
    roscpp
    roscpp_serialization
    sensor_msgs
  ];

  colconTestDepends = [
    rosbash
    rosunit
  ];
}
