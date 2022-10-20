{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  chromium,
  performance_test,
  python3Packages,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "performance_report";
  pkgFinal = final.rolling.performance_report;
  src = srcs.performance_test.performance_report;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    chromium
    performance_test
    python3Packages.pandas
    python3Packages.selenium
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
    python3Packages.pyyaml
  ];
}
