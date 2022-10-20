{
  ament_cmake_auto,
  ament_cmake_ros,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rplidar_ros";
  pkgFinal = final.rolling.rplidar_ros;
  src = srcs.rplidar_ros.rplidar_ros;

  colconBuildDepends = [
    ament_cmake_auto
    ament_cmake_ros
    rclcpp
    rclcpp_components
    sensor_msgs
    std_srvs
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    sensor_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
