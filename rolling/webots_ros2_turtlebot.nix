{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  controller_manager,
  diff_drive_controller,
  joint_state_broadcaster,
  python3Packages,
  rclpy,
  robot_state_publisher,
  rviz2,
  tf2_ros,
  webots_ros2_control,
  webots_ros2_driver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_turtlebot";
  pkgFinal = final.rolling.webots_ros2_turtlebot;
  src = srcs.webots_ros2.webots_ros2_turtlebot;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    builtin_interfaces
    controller_manager
    diff_drive_controller
    joint_state_broadcaster
    rclpy
    robot_state_publisher
    rviz2
    tf2_ros
    webots_ros2_control
    webots_ros2_driver
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
