{
  ament_flake8,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_mypy";
  pkgFinal = final.rolling.ament_mypy;
  src = srcs.ament_lint.ament_mypy;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.mypy
  ];

  colconTestDepends = [
    ament_flake8
    python3Packages.pytest
    python3Packages.pytest-mock
  ];
}
