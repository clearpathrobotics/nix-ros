{
  ament_cmake_gtest,
  ament_cpplint,
  curl,
  diagnostic_aggregator,
  diagnostic_updater,
  geometry_msgs,
  jq,
  lifecycle_msgs,
  mavros_msgs,
  microstrain_inertial_msgs,
  nav_msgs,
  nmea_msgs,
  rclcpp_lifecycle,
  ros_environment,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "microstrain_inertial_driver";
  pkgFinal = final.rolling.microstrain_inertial_driver;
  src = srcs.microstrain_inertial.microstrain_inertial_driver;

  colconBuildDepends = [
    curl
    diagnostic_updater
    geometry_msgs
    jq
    lifecycle_msgs
    mavros_msgs
    microstrain_inertial_msgs
    nav_msgs
    nmea_msgs
    rclcpp_lifecycle
    ros_environment
    rosidl_default_generators
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    diagnostic_aggregator
    diagnostic_updater
    geometry_msgs
    lifecycle_msgs
    mavros_msgs
    microstrain_inertial_msgs
    nav_msgs
    nmea_msgs
    rclcpp_lifecycle
    rosidl_default_runtime
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cpplint
  ];
}
