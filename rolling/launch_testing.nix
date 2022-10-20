{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  launch,
  launch_xml,
  launch_yaml,
  osrf_pycommon,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_testing";
  pkgFinal = final.rolling.launch_testing;
  src = srcs.launch.launch_testing;

  colconBuildDepends = [
    launch_xml
    launch_yaml
  ];

  colconRunDepends = [
    ament_index_python
    launch
    launch_xml
    launch_yaml
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
