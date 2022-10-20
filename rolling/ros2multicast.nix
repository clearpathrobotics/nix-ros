{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  python3Packages,
  ros2cli,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2multicast";
  pkgFinal = final.rolling.ros2multicast;
  src = srcs.ros2cli.ros2multicast;

  colconBuildDepends = [
    ros2cli
  ];

  colconRunDepends = [
    ros2cli
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
    python3Packages.pytest
    python3Packages.pytest-timeout
  ];
}
