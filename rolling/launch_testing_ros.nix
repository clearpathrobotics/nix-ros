{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  launch_ros,
  launch_testing,
  python3Packages,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_testing_ros";
  pkgFinal = final.rolling.launch_testing_ros;
  src = srcs.launch_ros.launch_testing_ros;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    launch_ros
    launch_testing
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
    std_msgs
  ];
}
