{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  example_interfaces,
  python3Packages,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclpy_minimal_service";
  pkgFinal = final.rolling.examples_rclpy_minimal_service;
  src = srcs.examples.examples_rclpy_minimal_service;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    example_interfaces
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
