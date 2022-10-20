{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclpy_guard_conditions";
  pkgFinal = final.rolling.examples_rclpy_guard_conditions;
  src = srcs.examples.examples_rclpy_guard_conditions;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
