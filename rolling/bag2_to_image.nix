{
  ament_cmake,
  ament_cmake_clang_format,
  ament_lint_auto,
  ament_lint_common,
  opencv,
  rclcpp,
  rclcpp_components,
  rosbag2_cpp,
  rosbag2_storage,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bag2_to_image";
  pkgFinal = final.rolling.bag2_to_image;
  src = srcs.bag2_to_image.bag2_to_image;

  colconBuildDepends = [
    ament_cmake
    opencv
    rclcpp
    rclcpp_components
    rosbag2_cpp
    rosbag2_storage
    sensor_msgs
  ];

  colconRunDepends = [
    opencv
    rclcpp
    rclcpp_components
    rosbag2_cpp
    rosbag2_storage
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_clang_format
    ament_lint_auto
    ament_lint_common
  ];
}
