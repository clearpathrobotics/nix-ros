{
  ament_cmake_python,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  pybind11_vendor,
  python3Packages,
  python_cmake_module,
  rcl_interfaces,
  rclpy,
  rosbag2_compression,
  rosbag2_cpp,
  rosbag2_storage,
  rosbag2_storage_default_plugins,
  rosbag2_transport,
  rosidl_runtime_py,
  rpyutils,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_py";
  pkgFinal = final.rolling.rosbag2_py;
  src = srcs.rosbag2.rosbag2_py;

  colconBuildDepends = [
    ament_cmake_python
    ament_cmake_ros
    pybind11_vendor
    python_cmake_module
    rosbag2_compression
    rosbag2_cpp
    rosbag2_storage
    rosbag2_transport
  ];

  colconRunDepends = [
    pybind11_vendor
    rosbag2_compression
    rosbag2_cpp
    rosbag2_storage
    rosbag2_transport
    rpyutils
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    python3Packages.pytest
    rcl_interfaces
    rclpy
    rosbag2_storage_default_plugins
    rosidl_runtime_py
    std_msgs
  ];
}
