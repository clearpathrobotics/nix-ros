{
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_pycodestyle";
  pkgFinal = final.rolling.ament_pycodestyle;
  src = srcs.ament_lint.ament_pycodestyle;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.pycodestyle
  ];

  colconTestDepends = [
  ];
}
