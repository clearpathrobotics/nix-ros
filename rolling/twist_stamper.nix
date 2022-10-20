{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  geometry_msgs,
  python3Packages,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "twist_stamper";
  pkgFinal = final.rolling.twist_stamper;
  src = srcs.twist_stamper.twist_stamper;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    geometry_msgs
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
