{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclpy_minimal_subscriber";
  pkgFinal = final.rolling.examples_rclpy_minimal_subscriber;
  src = srcs.examples.examples_rclpy_minimal_subscriber;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rclpy
    std_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
