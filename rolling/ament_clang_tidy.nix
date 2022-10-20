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
  name = "ament_clang_tidy";
  pkgFinal = final.rolling.ament_clang_tidy;
  src = srcs.ament_lint.ament_clang_tidy;

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
