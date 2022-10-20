{
  ament_lint,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_flake8";
  pkgFinal = final.rolling.ament_flake8;
  src = srcs.ament_lint.ament_flake8;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_lint
    python3Packages.flake8
  ];

  colconTestDepends = [
  ];
}
