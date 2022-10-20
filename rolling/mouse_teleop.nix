{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  geometry_msgs,
  python3Packages,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mouse_teleop";
  pkgFinal = final.rolling.mouse_teleop;
  src = srcs.teleop_tools.mouse_teleop;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    geometry_msgs
    python3Packages.numpy
    python3Packages.tkinter
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
  ];
}
