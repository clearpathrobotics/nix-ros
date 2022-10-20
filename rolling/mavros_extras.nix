{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  angles,
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
  libyamlcpp,
  mavlink,
  mavros,
  mavros_msgs,
  message_filters,
  nav_msgs,
  pluginlib,
  rclcpp,
  rclcpp_components,
  rcpputils,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_eigen,
  tf2_ros,
  trajectory_msgs,
  urdf,
  visualization_msgs,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mavros_extras";
  pkgFinal = final.rolling.mavros_extras;
  src = srcs.mavros.mavros_extras;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    angles
    diagnostic_msgs
    diagnostic_updater
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    geographic_msgs
    geographiclib
    geometry_msgs
    libmavconn
    libyamlcpp
    mavlink
    mavros
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
    urdf
    visualization_msgs
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    geographic_msgs
    geographiclib
    geometry_msgs
    libmavconn
    libyamlcpp
    mavlink
    mavros
    mavros_msgs
    message_filters
    nav_msgs
    pluginlib
    rclcpp
    rclcpp_components
    rcpputils
    rosidl_default_runtime
    sensor_msgs
    std_msgs
    std_srvs
    tf2_eigen
    tf2_ros
    trajectory_msgs
    urdf
    visualization_msgs
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    gtest
  ];
}
