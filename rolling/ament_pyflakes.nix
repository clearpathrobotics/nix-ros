{
  ament_pycodestyle,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_pyflakes";
  pkgFinal = final.rolling.ament_pyflakes;
  src = srcs.ament_lint.ament_pyflakes;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.pyflakes
  ];

  colconTestDepends = [
    ament_pycodestyle
    python3Packages.pytest
  ];
}
