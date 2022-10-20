{
  catkin,
  libyamlcpp,
  pcl_conversions,
  roscpp,
  roslib,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rslidar_sdk";
  pkgFinal = final.noetic.rslidar_sdk;
  src = srcs.rslidar_sdk.rslidar_sdk;

  colconBuildDepends = [
    catkin
    libyamlcpp
    pcl_conversions
    roscpp
    roslib
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    catkin
    libyamlcpp
    pcl_conversions
    roscpp
    roslib
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
