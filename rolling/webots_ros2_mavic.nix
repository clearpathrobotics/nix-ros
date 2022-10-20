{
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
  name = "webots_ros2_mavic";
  pkgFinal = final.rolling.webots_ros2_mavic;
  src = srcs.webots_ros2.webots_ros2_mavic;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    builtin_interfaces
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
