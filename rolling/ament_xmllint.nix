{
  ament_copyright,
  ament_flake8,
  ament_lint,
  ament_pep257,
  libxml2,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_xmllint";
  pkgFinal = final.rolling.ament_xmllint;
  src = srcs.ament_lint.ament_xmllint;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_lint
    libxml2
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
