{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  controller_manager,
  diff_drive_controller,
  geometry_msgs,
  joint_state_broadcaster,
  nav_msgs,
  python3Packages,
  rclpy,
  robot_state_publisher,
  rviz2,
  sensor_msgs,
  std_msgs,
  tf2_ros,
  webots_ros2_control,
  webots_ros2_driver,
  webots_ros2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_epuck";
  pkgFinal = final.rolling.webots_ros2_epuck;
  src = srcs.webots_ros2.webots_ros2_epuck;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    builtin_interfaces
    controller_manager
    diff_drive_controller
    geometry_msgs
    joint_state_broadcaster
    nav_msgs
    rclpy
    robot_state_publisher
    rviz2
    sensor_msgs
    std_msgs
    tf2_ros
    webots_ros2_control
    webots_ros2_driver
    webots_ros2_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
