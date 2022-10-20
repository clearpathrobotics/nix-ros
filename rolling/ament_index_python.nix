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
  name = "ament_index_python";
  pkgFinal = final.rolling.ament_index_python;
  src = srcs.ament_index.ament_index_python;

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
