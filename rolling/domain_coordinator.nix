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
  name = "domain_coordinator";
  pkgFinal = final.rolling.domain_coordinator;
  src = srcs.ament_cmake_ros.domain_coordinator;

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
