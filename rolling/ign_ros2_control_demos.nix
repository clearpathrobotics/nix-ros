{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  control_msgs,
  diff_drive_controller,
  effort_controllers,
  geometry_msgs,
  hardware_interface,
  ign_ros2_control,
  imu_sensor_broadcaster,
  joint_state_broadcaster,
  joint_trajectory_controller,
  launch,
  launch_ros,
  rclcpp,
  rclcpp_action,
  robot_state_publisher,
  ros2controlcli,
  ros2launch,
  std_msgs,
  tricycle_controller,
  velocity_controllers,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ign_ros2_control_demos";
  pkgFinal = final.rolling.ign_ros2_control_demos;
  src = srcs.ign_ros2_control.ign_ros2_control_demos;

  colconBuildDepends = [
    ament_cmake
    control_msgs
    geometry_msgs
    rclcpp
    rclcpp_action
    std_msgs
  ];

  colconRunDepends = [
    ament_index_python
    control_msgs
    diff_drive_controller
    effort_controllers
    geometry_msgs
    hardware_interface
    ign_ros2_control
    imu_sensor_broadcaster
    joint_state_broadcaster
    joint_trajectory_controller
    launch
    launch_ros
    rclcpp
    robot_state_publisher
    ros2controlcli
    ros2launch
    std_msgs
    tricycle_controller
    velocity_controllers
    xacro
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
