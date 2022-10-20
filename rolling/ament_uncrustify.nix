{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_pycodestyle,
  python3Packages,
  uncrustify_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_uncrustify";
  pkgFinal = final.rolling.ament_uncrustify;
  src = srcs.ament_lint.ament_uncrustify;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    uncrustify_vendor
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_pycodestyle
    python3Packages.pytest
  ];
}
