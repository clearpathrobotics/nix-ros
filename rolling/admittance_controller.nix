{
  ament_cmake,
  ament_cmake_gmock,
  control_msgs,
  control_toolbox,
  controller_interface,
  controller_manager,
  filters,
  generate_parameter_library,
  geometry_msgs,
  hardware_interface,
  joint_trajectory_controller,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  realtime_tools,
  ros2_control_test_assets,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_kdl,
  tf2_ros,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "admittance_controller";
  pkgFinal = final.rolling.admittance_controller;
  src = srcs.ros2_controllers.admittance_controller;

  colconBuildDepends = [
    ament_cmake
    control_msgs
    control_toolbox
    controller_interface
    filters
    generate_parameter_library
    geometry_msgs
    hardware_interface
    joint_trajectory_controller
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_kdl
    tf2_ros
    trajectory_msgs
  ];

  colconRunDepends = [
    control_msgs
    control_toolbox
    controller_interface
    filters
    generate_parameter_library
    geometry_msgs
    hardware_interface
    joint_trajectory_controller
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_kdl
    tf2_ros
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    control_msgs
    controller_manager
    hardware_interface
    ros2_control_test_assets
  ];
}
