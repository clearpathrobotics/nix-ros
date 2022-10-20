{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  rclpy,
  ros2cli,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2node";
  pkgFinal = final.rolling.ros2node;
  src = srcs.ros2cli.ros2node;

  colconBuildDepends = [
    ros2cli
  ];

  colconRunDepends = [
    ros2cli
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
    rclpy
    test_msgs
  ];
}
