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
  name = "bno055";
  pkgFinal = final.rolling.bno055;
  src = srcs.bno055.bno055;

  colconBuildDepends = [
    python3Packages.pyserial
  ];

  colconRunDepends = [
    example_interfaces
    python3Packages.pyserial
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
