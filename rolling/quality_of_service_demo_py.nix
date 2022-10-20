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
  name = "quality_of_service_demo_py";
  pkgFinal = final.rolling.quality_of_service_demo_py;
  src = srcs.demos.quality_of_service_demo_py;

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
