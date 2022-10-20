{
  ament_flake8,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  ament_mypy,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nodl_python";
  pkgFinal = final.rolling.nodl_python;
  src = srcs.nodl.nodl_python;

  colconBuildDepends = [
    ament_index_python
    python3Packages.lxml
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.lxml
  ];

  colconTestDepends = [
    ament_flake8
    ament_lint_auto
    ament_lint_common
    ament_mypy
    python3Packages.pytest
    python3Packages.pytest-mock
  ];
}
