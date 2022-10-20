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
  rcl_interfaces,
  rclpy,
  ros2cli,
  ros2node,
  ros2service,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2param";
  pkgFinal = final.rolling.ros2param;
  src = srcs.ros2cli.ros2param;

  colconBuildDepends = [
    rcl_interfaces
    rclpy
    ros2cli
  ];

  colconRunDepends = [
    rcl_interfaces
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
  ];
}
