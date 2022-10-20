{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  launch,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_yaml";
  pkgFinal = final.rolling.launch_yaml;
  src = srcs.launch.launch_yaml;

  colconBuildDepends = [
    launch
  ];

  colconRunDepends = [
    launch
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
