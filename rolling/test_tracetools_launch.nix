{
  ament_copyright,
  ament_flake8,
  ament_mypy,
  ament_pep257,
  ament_xmllint,
  launch,
  launch_ros,
  launch_xml,
  launch_yaml,
  python3Packages,
  test_tracetools,
  tracetools_launch,
  tracetools_trace,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_tracetools_launch";
  pkgFinal = final.rolling.test_tracetools_launch;
  src = srcs.ros2_tracing.test_tracetools_launch;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_mypy
    ament_pep257
    ament_xmllint
    launch
    launch_ros
    launch_xml
    launch_yaml
    python3Packages.pytest
    test_tracetools
    tracetools_launch
    tracetools_trace
  ];
}
