{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  libyamlcpp,
  rclcpp,
  ur_client_library,
  ur_robot_driver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_calibration";
  pkgFinal = final.rolling.ur_calibration;
  src = srcs.ur_robot_driver.ur_calibration;

  colconBuildDepends = [
    ament_cmake
    eigen
    libyamlcpp
    rclcpp
    ur_client_library
    ur_robot_driver
  ];

  colconRunDepends = [
    eigen
    libyamlcpp
    rclcpp
    ur_client_library
    ur_robot_driver
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
