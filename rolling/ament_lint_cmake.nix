{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_lint_cmake";
  pkgFinal = final.rolling.ament_lint_cmake;
  src = srcs.ament_lint.ament_lint_cmake;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
