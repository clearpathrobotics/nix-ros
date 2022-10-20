{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  launch,
  launch_testing,
  osrf_pycommon,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_pytest";
  pkgFinal = final.rolling.launch_pytest;
  src = srcs.launch.launch_pytest;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    launch
    launch_testing
    osrf_pycommon
    python3Packages.pytest
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    launch
  ];
}
