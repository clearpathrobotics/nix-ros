{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_mypy,
  ament_pep257,
  python3Packages,
  rclpy,
  ros2cli,
  ros_testing,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sros2";
  pkgFinal = final.rolling.sros2;
  src = srcs.sros2.sros2;

  colconBuildDepends = [
    rclpy
    ros2cli
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.cryptography
    python3Packages.importlib-resources
    python3Packages.lxml
    rclpy
    ros2cli
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_mypy
    ament_pep257
    python3Packages.pytest
    ros_testing
    test_msgs
  ];
}
