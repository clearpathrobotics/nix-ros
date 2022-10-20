{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  python3Packages,
  rclpy,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2cli";
  pkgFinal = final.rolling.ros2cli;
  src = srcs.ros2cli.ros2cli;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.argcomplete
    python3Packages.importlib-metadata
    python3Packages.netifaces
    python3Packages.packaging
    python3Packages.setuptools
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
    python3Packages.pytest
    python3Packages.pytest-timeout
    test_msgs
  ];
}
