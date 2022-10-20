{
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_package";
  pkgFinal = final.rolling.ament_package;
  src = srcs.ament_package.ament_package;

  colconBuildDepends = [
    python3Packages.importlib-metadata
    python3Packages.importlib-resources
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.importlib-metadata
    python3Packages.importlib-resources
    python3Packages.setuptools
  ];

  colconTestDepends = [
    python3Packages.flake8
    python3Packages.pytest
  ];
}
