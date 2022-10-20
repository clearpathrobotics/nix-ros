{
  ament_cmake_auto,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  cv_bridge,
  image_geometry,
  image_proc,
  image_transport,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ament_cmake,
  message_filters,
  python3Packages,
  python_cmake_module,
  rclcpp,
  rclcpp_components,
  rclpy,
  ros_testing,
  sensor_msgs,
  stereo_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "stereo_image_proc";
  pkgFinal = final.rolling.stereo_image_proc;
  src = srcs.image_pipeline.stereo_image_proc;

  colconBuildDepends = [
    ament_cmake_auto
    cv_bridge
    image_geometry
    image_proc
    image_transport
    message_filters
    rclcpp
    rclcpp_components
    sensor_msgs
    stereo_msgs
  ];

  colconRunDepends = [
    cv_bridge
    image_geometry
    image_proc
    image_transport
    message_filters
    rclcpp
    rclcpp_components
    sensor_msgs
    stereo_msgs
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    launch
    launch_ros
    launch_testing
    launch_testing_ament_cmake
    python3Packages.opencv3
    python_cmake_module
    rclpy
    ros_testing
  ];
}
