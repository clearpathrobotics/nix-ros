{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  geometry_msgs,
  python3Packages,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "key_teleop";
  pkgFinal = final.rolling.key_teleop;
  src = srcs.teleop_tools.key_teleop;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    geometry_msgs
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
