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
  rosidl_runtime_py,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2service";
  pkgFinal = final.rolling.ros2service;
  src = srcs.ros2cli.ros2service;

  colconBuildDepends = [
    rclpy
    ros2cli
  ];

  colconRunDepends = [
    python3Packages.pyyaml
    rclpy
    ros2cli
    rosidl_runtime_py
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
    test_msgs
  ];
}
