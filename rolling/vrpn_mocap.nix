{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  eigen3_cmake_module,
  geometry_msgs,
  rclcpp,
  std_msgs,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vrpn_mocap";
  pkgFinal = final.rolling.vrpn_mocap;
  src = srcs.vrpn_mocap.vrpn_mocap;

  colconBuildDepends = [
    ament_cmake
    eigen
    eigen3_cmake_module
    geometry_msgs
    rclcpp
    std_msgs
    tf2
  ];

  colconRunDepends = [
    geometry_msgs
    rclcpp
    std_msgs
    tf2
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
