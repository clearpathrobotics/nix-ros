{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  geometry_msgs,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_twist_keyboard";
  pkgFinal = final.rolling.teleop_twist_keyboard;
  src = srcs.teleop_twist_keyboard.teleop_twist_keyboard;

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
  ];
}
