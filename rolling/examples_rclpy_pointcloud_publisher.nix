{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rclpy,
  sensor_msgs,
  sensor_msgs_py,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclpy_pointcloud_publisher";
  pkgFinal = final.rolling.examples_rclpy_pointcloud_publisher;
  src = srcs.examples.examples_rclpy_pointcloud_publisher;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.numpy
    rclpy
    sensor_msgs
    sensor_msgs_py
    std_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
