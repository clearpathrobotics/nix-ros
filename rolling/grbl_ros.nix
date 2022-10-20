{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  grbl_msgs,
  python3Packages,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "grbl_ros";
  pkgFinal = final.rolling.grbl_ros;
  src = srcs.grbl_ros.grbl_ros;

  colconBuildDepends = [
    grbl_msgs
    python3Packages.pyserial
    rclpy
    std_msgs
  ];

  colconRunDepends = [
    grbl_msgs
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
