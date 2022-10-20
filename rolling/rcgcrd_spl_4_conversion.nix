{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rcgcrd_spl_4,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcgcrd_spl_4_conversion";
  pkgFinal = final.rolling.rcgcrd_spl_4_conversion;
  src = srcs.gc_spl.rcgcrd_spl_4_conversion;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.construct
    rcgcrd_spl_4
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
