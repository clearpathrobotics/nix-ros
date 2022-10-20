{
  ackermann_msgs,
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  python3Packages,
  rclpy,
  webots_ros2_driver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_tesla";
  pkgFinal = final.rolling.webots_ros2_tesla;
  src = srcs.webots_ros2.webots_ros2_tesla;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ackermann_msgs
    builtin_interfaces
    python3Packages.numpy
    python3Packages.opencv3
    rclpy
    webots_ros2_driver
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
