{
  ament_cmake,
  ament_cmake_python,
  controller_manager,
  force_torque_sensor_broadcaster,
  joint_state_broadcaster,
  joint_state_publisher,
  joint_trajectory_controller,
  launch,
  launch_ros,
  position_controllers,
  rclpy,
  robot_state_publisher,
  ros2_controllers_test_nodes,
  rviz2,
  ur_controllers,
  ur_description,
  urdf,
  velocity_controllers,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_bringup";
  pkgFinal = final.rolling.ur_bringup;
  src = srcs.ur_robot_driver.ur_bringup;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    rclpy
  ];

  colconRunDepends = [
    controller_manager
    force_torque_sensor_broadcaster
    joint_state_broadcaster
    joint_state_publisher
    joint_trajectory_controller
    launch
    launch_ros
    position_controllers
    rclpy
    robot_state_publisher
    ros2_controllers_test_nodes
    rviz2
    ur_controllers
    ur_description
    urdf
    velocity_controllers
    xacro
  ];

  colconTestDepends = [
  ];
}
