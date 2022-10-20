{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_xmllint,
  ament_lint_auto,
  diagnostic_updater,
  image_transport,
  rc_common_msgs,
  rc_genicam_api,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  stereo_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_genicam_driver";
  pkgFinal = final.rolling.rc_genicam_driver;
  src = srcs.rc_genicam_driver.rc_genicam_driver;

  colconBuildDepends = [
    ament_cmake
    diagnostic_updater
    image_transport
    rc_common_msgs
    rc_genicam_api
    rclcpp
    rclcpp_components
    sensor_msgs
    stereo_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    image_transport
    rc_common_msgs
    rc_genicam_api
    rclcpp
    rclcpp_components
    sensor_msgs
    stereo_msgs
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
