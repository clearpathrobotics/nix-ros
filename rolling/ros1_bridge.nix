{
  ament_cmake,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  boost,
  builtin_interfaces,
  demo_nodes_cpp,
  diagnostic_msgs,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  pkg-config,
  python3,
  python3Packages,
  rclcpp,
  rcpputils,
  rcutils,
  rmw_implementation_cmake,
  ros2run,
  rosidl_cmake,
  rosidl_parser,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros1_bridge";
  pkgFinal = final.rolling.ros1_bridge;
  src = srcs.ros1_bridge.ros1_bridge;

  colconBuildDepends = [
    ament_cmake
    ament_index_python
    boost
    builtin_interfaces
    pkg-config
    python3
    python3Packages.catkin-pkg
    python3Packages.pyyaml
    rclcpp
    rcpputils
    rcutils
    rmw_implementation_cmake
    rosidl_cmake
    rosidl_parser
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    pkg-config
    python3Packages.pyyaml
    rclcpp
    rcpputils
    rcutils
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    demo_nodes_cpp
    diagnostic_msgs
    launch
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    ros2run
  ];
}
