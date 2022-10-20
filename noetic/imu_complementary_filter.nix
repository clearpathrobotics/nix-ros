{
  catkin,
  cmake_modules,
  geometry_msgs,
  message_filters,
  nodelet,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_complementary_filter";
  pkgFinal = final.noetic.imu_complementary_filter;
  src = srcs.imu_tools.imu_complementary_filter;

  colconBuildDepends = [
    catkin
    cmake_modules
    geometry_msgs
    message_filters
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    message_filters
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
