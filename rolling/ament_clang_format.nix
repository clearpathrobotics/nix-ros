{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  clang,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_clang_format";
  pkgFinal = final.rolling.ament_clang_format;
  src = srcs.ament_lint.ament_clang_format;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    clang
    python3Packages.pyyaml
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
