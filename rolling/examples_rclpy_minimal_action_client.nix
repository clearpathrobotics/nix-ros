{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  example_interfaces,
  python3Packages,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclpy_minimal_action_client";
  pkgFinal = final.rolling.examples_rclpy_minimal_action_client;
  src = srcs.examples.examples_rclpy_minimal_action_client;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    example_interfaces
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
