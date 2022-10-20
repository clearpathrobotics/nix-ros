{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  python3Packages,
  ros2cli,
  ros2pkg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2run";
  pkgFinal = final.rolling.ros2run;
  src = srcs.ros2cli.ros2run;

  colconBuildDepends = [
    ros2cli
  ];

  colconRunDepends = [
    ros2cli
    ros2pkg
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
