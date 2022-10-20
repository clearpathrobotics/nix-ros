{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rmw,
  rosbag2_compression,
  rosbag2_cpp,
  rosbag2_storage,
  std_msgs,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_performance_benchmarking";
  pkgFinal = final.rolling.rosbag2_performance_benchmarking;
  src = srcs.rosbag2.rosbag2_performance_benchmarking;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rmw
    rosbag2_compression
    rosbag2_cpp
    rosbag2_storage
    std_msgs
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    rclcpp
    rmw
    rosbag2_compression
    rosbag2_cpp
    rosbag2_storage
    std_msgs
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
