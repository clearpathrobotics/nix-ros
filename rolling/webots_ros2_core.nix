{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  python3Packages,
  rclpy,
  std_msgs,
  vision_msgs,
  webots_ros2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_core";
  pkgFinal = final.rolling.webots_ros2_core;
  src = srcs.webots_ros2.webots_ros2_core;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    builtin_interfaces
    python3Packages.tkinter
    rclpy
    std_msgs
    vision_msgs
    webots_ros2_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
