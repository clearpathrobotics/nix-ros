{
  ament_flake8,
  ament_pep257,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf_transformations";
  pkgFinal = final.rolling.tf_transformations;
  src = srcs.tf_transformations.tf_transformations;

  colconBuildDepends = [
    python3Packages.numpy
  ];

  colconRunDepends = [
    python3Packages.numpy
  ];

  colconTestDepends = [
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
