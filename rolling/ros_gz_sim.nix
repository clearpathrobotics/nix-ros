{
  ament_cmake,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  gflags,
  pkg-config,
  rclcpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_gz_sim";
  pkgFinal = final.rolling.ros_gz_sim;
  src = srcs.ros_ign.ros_gz_sim;

  colconBuildDepends = [
    ament_cmake
    ament_index_python
    gflags
    pkg-config
    rclcpp
    std_msgs
  ];

  colconRunDepends = [
    ament_index_python
    gflags
    rclcpp
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
