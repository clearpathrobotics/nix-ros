{
  ament_flake8,
  ament_pep257,
  launch,
  launch_ros,
  python3Packages,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "topic_monitor";
  pkgFinal = final.rolling.topic_monitor;
  src = srcs.demos.topic_monitor;

  colconBuildDepends = [
    rclpy
  ];

  colconRunDepends = [
    launch
    launch_ros
    rclpy
    std_msgs
  ];

  colconTestDepends = [
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
