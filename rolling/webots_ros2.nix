{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  python3Packages,
  rclpy,
  std_msgs,
  webots_ros2_control,
  webots_ros2_core,
  webots_ros2_driver,
  webots_ros2_epuck,
  webots_ros2_importer,
  webots_ros2_mavic,
  webots_ros2_msgs,
  webots_ros2_tesla,
  webots_ros2_tests,
  webots_ros2_tiago,
  webots_ros2_turtlebot,
  webots_ros2_universal_robot,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2";
  pkgFinal = final.rolling.webots_ros2;
  src = srcs.webots_ros2.webots_ros2;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    builtin_interfaces
    rclpy
    std_msgs
    webots_ros2_control
    webots_ros2_core
    webots_ros2_driver
    webots_ros2_epuck
    webots_ros2_importer
    webots_ros2_mavic
    webots_ros2_msgs
    webots_ros2_tesla
    webots_ros2_tiago
    webots_ros2_turtlebot
    webots_ros2_universal_robot
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
    webots_ros2_tests
  ];
}
