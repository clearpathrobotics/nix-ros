{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_python,
  ament_index_cpp,
  controller_interface,
  controller_manager_msgs,
  diagnostic_updater,
  hardware_interface,
  launch,
  launch_ros,
  pluginlib,
  rclcpp,
  rcpputils,
  realtime_tools,
  ros2_control_test_assets,
  ros2param,
  ros2run,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "controller_manager";
  pkgFinal = final.rolling.controller_manager;
  src = srcs.ros2_control.controller_manager;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    ament_index_cpp
    controller_interface
    controller_manager_msgs
    diagnostic_updater
    hardware_interface
    launch
    launch_ros
    pluginlib
    rclcpp
    rcpputils
    ros2_control_test_assets
    ros2param
    ros2run
  ];

  colconRunDepends = [
    ament_index_cpp
    controller_interface
    controller_manager_msgs
    diagnostic_updater
    hardware_interface
    launch
    launch_ros
    pluginlib
    rclcpp
    rcpputils
    ros2_control_test_assets
    ros2param
    ros2run
  ];

  colconTestDepends = [
    ament_cmake_gmock
    realtime_tools
  ];
}
