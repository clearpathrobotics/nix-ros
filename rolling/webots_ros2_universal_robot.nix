{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  control_msgs,
  controller_manager,
  joint_state_broadcaster,
  joint_trajectory_controller,
  python3Packages,
  rclpy,
  robot_state_publisher,
  rviz2,
  trajectory_msgs,
  webots_ros2_control,
  webots_ros2_driver,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_universal_robot";
  pkgFinal = final.rolling.webots_ros2_universal_robot;
  src = srcs.webots_ros2.webots_ros2_universal_robot;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    builtin_interfaces
    control_msgs
    controller_manager
    joint_state_broadcaster
    joint_trajectory_controller
    rclpy
    robot_state_publisher
    rviz2
    trajectory_msgs
    webots_ros2_control
    webots_ros2_driver
    xacro
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
