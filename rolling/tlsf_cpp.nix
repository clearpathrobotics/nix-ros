{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rmw,
  rmw_implementation_cmake,
  std_msgs,
  tlsf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tlsf_cpp";
  pkgFinal = final.rolling.tlsf_cpp;
  src = srcs.realtime_support.tlsf_cpp;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rmw
    std_msgs
    tlsf
  ];

  colconRunDepends = [
    ament_cmake
    rclcpp
    rmw
    std_msgs
    tlsf
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    rmw_implementation_cmake
  ];
}
