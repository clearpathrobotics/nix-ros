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
  name = "rpyutils";
  pkgFinal = final.rolling.rpyutils;
  src = srcs.rpyutils.rpyutils;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
    python3Packages.pytest
  ];
}
