{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
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
  name = "ros2acceleration";
  pkgFinal = final.rolling.ros2acceleration;
  src = srcs.ros2acceleration.ros2acceleration;

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
    python3Packages.pytest
    test_msgs
  ];
}
