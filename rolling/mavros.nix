{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  angles,
  console-bridge,
  diagnostic_msgs,
  diagnostic_updater,
  eigen,
  eigen3_cmake_module,
  eigen_stl_containers,
  geographic_msgs,
  geographiclib,
  geometry_msgs,
  gtest,
  libmavconn,
  mavlink,
  mavros_msgs,
  message_filters,
  nav_msgs,
  pluginlib,
  python3Packages,
  rclcpp,
  rclcpp_components,
  rclpy,
  rcpputils,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_eigen,
  tf2_ros,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mavros";
  pkgFinal = final.rolling.mavros;
  src = srcs.mavros.mavros;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    angles
    console-bridge
    diagnostic_msgs
    diagnostic_updater
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    geographic_msgs
    geographiclib
    geometry_msgs
    libmavconn
    mavlink
    mavros_msgs
    message_filters
    nav_msgs
    pluginlib
    rclcpp
    rclcpp_components
    rcpputils
    sensor_msgs
    std_msgs
    std_srvs
    tf2_eigen
    tf2_ros
    trajectory_msgs
  ];

  colconRunDepends = [
    console-bridge
    diagnostic_msgs
    diagnostic_updater
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    geographic_msgs
    geographiclib
    geometry_msgs
    libmavconn
    mavlink
    mavros_msgs
    message_filters
    nav_msgs
    pluginlib
    python3Packages.click
    rclcpp
    rclcpp_components
    rclpy
    rcpputils
    rosidl_default_runtime
    sensor_msgs
    std_msgs
    std_srvs
    tf2_eigen
    tf2_ros
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    gtest
  ];
}
