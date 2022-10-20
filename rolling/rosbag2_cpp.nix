{
  ament_cmake,
  ament_cmake_gmock,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  pluginlib,
  rclcpp,
  rcpputils,
  rcutils,
  rmw,
  rmw_implementation,
  rosbag2_storage,
  rosbag2_storage_default_plugins,
  rosbag2_test_common,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  rosidl_typesupport_cpp,
  rosidl_typesupport_introspection_cpp,
  shared_queues_vendor,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_cpp";
  pkgFinal = final.rolling.rosbag2_cpp;
  src = srcs.rosbag2.rosbag2_cpp;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    pluginlib
    rclcpp
    rcpputils
    rcutils
    rmw
    rmw_implementation
    rosbag2_storage
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_cpp
    rosidl_typesupport_introspection_cpp
    shared_queues_vendor
  ];

  colconRunDepends = [
    ament_index_cpp
    pluginlib
    rclcpp
    rcpputils
    rcutils
    rmw
    rmw_implementation
    rosbag2_storage
    rosbag2_storage_default_plugins
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_cpp
    rosidl_typesupport_introspection_cpp
    shared_queues_vendor
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    rosbag2_test_common
    test_msgs
  ];
}
