{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rcgcd_spl_14,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcgcd_spl_14_conversion";
  pkgFinal = final.rolling.rcgcd_spl_14_conversion;
  src = srcs.gc_spl.rcgcd_spl_14_conversion;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.construct
    rcgcd_spl_14
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
