{
  ament_cmake,
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "neo_simulation2";
  pkgFinal = final.rolling.neo_simulation2;
  src = srcs.neo_simulation2.neo_simulation2;

  colconBuildDepends = [
    ament_cmake
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
