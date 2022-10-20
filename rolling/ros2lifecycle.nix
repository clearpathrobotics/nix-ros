{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ros,
  lifecycle_msgs,
  python3Packages,
  rclpy,
  ros2cli,
  ros2lifecycle_test_fixtures,
  ros2node,
  ros2service,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2lifecycle";
  pkgFinal = final.rolling.ros2lifecycle;
  src = srcs.ros2cli.ros2lifecycle;

  colconBuildDepends = [
    rclpy
    ros2cli
  ];

  colconRunDepends = [
    lifecycle_msgs
    rclpy
    ros2cli
    ros2node
    ros2service
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
    launch
    launch_ros
    launch_testing
    launch_testing_ros
    python3Packages.pytest
    python3Packages.pytest-timeout
    ros2lifecycle_test_fixtures
  ];
}
