{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  osrf_pycommon,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch";
  pkgFinal = final.rolling.launch;
  src = srcs.launch.launch;

  colconBuildDepends = [
    osrf_pycommon
  ];

  colconRunDepends = [
    ament_index_python
    osrf_pycommon
    python3Packages.importlib-metadata
    python3Packages.lark
    python3Packages.pyyaml
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
