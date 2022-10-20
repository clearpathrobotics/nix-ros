{
  catkin,
  lcov,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "code_coverage";
  pkgFinal = final.noetic.code_coverage;
  src = srcs.code_coverage.code_coverage;

  colconBuildDepends = [
    catkin
    lcov
    python3Packages.coverage
  ];

  colconRunDepends = [
    lcov
    python3Packages.coverage
  ];

  colconTestDepends = [
  ];
}
