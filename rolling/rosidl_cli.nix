{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_cli";
  pkgFinal = final.rolling.rosidl_cli;
  src = srcs.rosidl.rosidl_cli;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.argcomplete
    python3Packages.importlib-metadata
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
    python3Packages.pytest
  ];
}
