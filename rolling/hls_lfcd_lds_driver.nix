{
  ament_cmake,
  boost,
  rclcpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hls_lfcd_lds_driver";
  pkgFinal = final.rolling.hls_lfcd_lds_driver;
  src = srcs.hls_lfcd_lds_driver.hls_lfcd_lds_driver;

  colconBuildDepends = [
    ament_cmake
    boost
    rclcpp
    sensor_msgs
  ];

  colconRunDepends = [
    boost
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
