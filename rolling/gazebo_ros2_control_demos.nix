{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  control_msgs,
  diff_drive_controller,
  effort_controllers,
  gazebo_ros,
  gazebo_ros2_control,
  geometry_msgs,
  hardware_interface,
  joint_state_broadcaster,
  joint_trajectory_controller,
  launch,
  launch_ros,
  rclcpp,
  rclcpp_action,
  robot_state_publisher,
  ros2_control,
  ros2_controllers,
  std_msgs,
  tricycle_controller,
  velocity_controllers,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_ros2_control_demos";
  pkgFinal = final.rolling.gazebo_ros2_control_demos;
  src = srcs.gazebo_ros2_control.gazebo_ros2_control_demos;

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
    gazebo_ros
    gazebo_ros2_control
    geometry_msgs
    hardware_interface
    joint_state_broadcaster
    joint_trajectory_controller
    launch
    launch_ros
    rclcpp
    robot_state_publisher
    ros2_control
    ros2_controllers
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
