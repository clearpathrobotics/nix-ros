{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  splsm_7,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "splsm_7_conversion";
  pkgFinal = final.rolling.splsm_7_conversion;
  src = srcs.r2r_spl.splsm_7_conversion;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.construct
    splsm_7
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
