{
  action_msgs,
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  ament_xmllint,
  launch,
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
  name = "ros2action";
  pkgFinal = final.rolling.ros2action;
  src = srcs.ros2cli.ros2action;

  colconBuildDepends = [
    rclpy
    ros2cli
  ];

  colconRunDepends = [
    action_msgs
    ament_index_python
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
    launch_testing
    launch_testing_ros
    python3Packages.pytest
    python3Packages.pytest-timeout
    test_msgs
  ];
}
