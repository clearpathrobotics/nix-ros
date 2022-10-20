{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  geometry_msgs,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  rclpy,
  ros2cli,
  rosgraph_msgs,
  rosidl_runtime_py,
  std_msgs,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2topic";
  pkgFinal = final.rolling.ros2topic;
  src = srcs.ros2cli.ros2topic;

  colconBuildDepends = [
    ros2cli
  ];

  colconRunDepends = [
    python3Packages.numpy
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
    geometry_msgs
    launch
    launch_ros
    launch_testing
    launch_testing_ros
    python3Packages.pytest
    python3Packages.pytest-timeout
    rosgraph_msgs
    std_msgs
    test_msgs
  ];
}
