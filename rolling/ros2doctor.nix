{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  ament_xmllint,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  rclpy,
  ros2cli,
  ros_environment,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2doctor";
  pkgFinal = final.rolling.ros2doctor;
  src = srcs.ros2cli.ros2doctor;

  colconBuildDepends = [
    ros2cli
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.catkin-pkg
    python3Packages.importlib-metadata
    python3Packages.psutil
    python3Packages.rosdistro
    rclpy
    ros2cli
    ros_environment
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
    std_msgs
  ];
}
