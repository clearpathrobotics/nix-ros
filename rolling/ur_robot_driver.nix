{
  ament_cmake,
  ament_cmake_python,
  controller_manager,
  controller_manager_msgs,
  force_torque_sensor_broadcaster,
  geometry_msgs,
  hardware_interface,
  joint_state_broadcaster,
  joint_state_publisher,
  joint_trajectory_controller,
  launch,
  launch_ros,
  launch_testing_ament_cmake,
  pluginlib,
  position_controllers,
  rclcpp,
  rclcpp_lifecycle,
  rclpy,
  robot_state_publisher,
  ros2_controllers_test_nodes,
  rviz2,
  std_msgs,
  std_srvs,
  tf2_geometry_msgs,
  ur_client_library,
  ur_controllers,
  ur_dashboard_msgs,
  ur_description,
  ur_msgs,
  urdf,
  velocity_controllers,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_robot_driver";
  pkgFinal = final.rolling.ur_robot_driver;
  src = srcs.ur_robot_driver.ur_robot_driver;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    controller_manager
    controller_manager_msgs
    geometry_msgs
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    rclpy
    std_msgs
    std_srvs
    tf2_geometry_msgs
    ur_client_library
    ur_controllers
    ur_dashboard_msgs
    ur_description
    ur_msgs
  ];

  colconRunDepends = [
    controller_manager
    controller_manager_msgs
    force_torque_sensor_broadcaster
    geometry_msgs
    hardware_interface
    joint_state_broadcaster
    joint_state_publisher
    joint_trajectory_controller
    launch
    launch_ros
    pluginlib
    position_controllers
    rclcpp
    rclcpp_lifecycle
    rclpy
    robot_state_publisher
    ros2_controllers_test_nodes
    rviz2
    std_msgs
    std_srvs
    tf2_geometry_msgs
    ur_client_library
    ur_controllers
    ur_dashboard_msgs
    ur_description
    ur_msgs
    urdf
    velocity_controllers
    xacro
  ];

  colconTestDepends = [
    launch_testing_ament_cmake
  ];
}
