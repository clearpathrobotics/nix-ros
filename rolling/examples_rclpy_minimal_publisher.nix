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
  name = "examples_rclpy_minimal_publisher";
  pkgFinal = final.rolling.examples_rclpy_minimal_publisher;
  src = srcs.examples.examples_rclpy_minimal_publisher;

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
