{
  ament_cmake,
  ament_cmake_gtest,
  launch_testing_ament_cmake,
  rclcpp,
  rclcpp_lifecycle,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_limits";
  pkgFinal = final.rolling.joint_limits;
  src = srcs.ros2_control.joint_limits;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_lifecycle
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_lifecycle
  ];

  colconTestDepends = [
    ament_cmake_gtest
    launch_testing_ament_cmake
  ];
}
