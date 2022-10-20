{
  ament_flake8,
  ament_lint,
  ament_pep257,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_copyright";
  pkgFinal = final.rolling.ament_copyright;
  src = srcs.ament_lint.ament_copyright;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_lint
    python3Packages.importlib-metadata
  ];

  colconTestDepends = [
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
