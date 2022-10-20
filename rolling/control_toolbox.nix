{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  control_msgs,
  rclcpp,
  rclcpp_lifecycle,
  rcutils,
  realtime_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "control_toolbox";
  pkgFinal = final.rolling.control_toolbox;
  src = srcs.control_toolbox.control_toolbox;

  colconBuildDepends = [
    ament_cmake
    control_msgs
    rclcpp
    rcutils
    realtime_tools
  ];

  colconRunDepends = [
    control_msgs
    rclcpp
    rcutils
    realtime_tools
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    rclcpp_lifecycle
  ];
}
