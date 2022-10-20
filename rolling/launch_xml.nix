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
  name = "launch_xml";
  pkgFinal = final.rolling.launch_xml;
  src = srcs.launch.launch_xml;

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
