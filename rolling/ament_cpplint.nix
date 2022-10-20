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
  name = "ament_cpplint";
  pkgFinal = final.rolling.ament_cpplint;
  src = srcs.ament_lint.ament_cpplint;

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
