{
  ament_flake8,
  ament_lint,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_pep257";
  pkgFinal = final.rolling.ament_pep257;
  src = srcs.ament_lint.ament_pep257;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_lint
    python3Packages.pydocstyle
  ];

  colconTestDepends = [
    ament_flake8
    python3Packages.pytest
  ];
}
