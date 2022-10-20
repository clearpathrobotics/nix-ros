{
  ament_cmake,
  ament_cmake_gtest,
  eigen,
  message_filters,
  pcl,
  pcl_msgs,
  rclcpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pcl_conversions";
  pkgFinal = final.rolling.pcl_conversions;
  src = srcs.perception_pcl.pcl_conversions;

  colconBuildDepends = [
    ament_cmake
    eigen
    message_filters
    pcl
    pcl_msgs
    rclcpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    eigen
    message_filters
    pcl
    pcl_msgs
    rclcpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
