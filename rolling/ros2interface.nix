{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  ament_xmllint,
  launch,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  ros2cli,
  ros2cli_test_interfaces,
  rosidl_runtime_py,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2interface";
  pkgFinal = final.rolling.ros2interface;
  src = srcs.ros2cli.ros2interface;

  colconBuildDepends = [
    ros2cli
  ];

  colconRunDepends = [
    ament_index_python
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
    ros2cli_test_interfaces
    test_msgs
  ];
}
