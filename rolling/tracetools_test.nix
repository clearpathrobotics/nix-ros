{
  ament_copyright,
  ament_flake8,
  ament_mypy,
  ament_pep257,
  ament_xmllint,
  launch,
  launch_ros,
  python3Packages,
  tracetools_launch,
  tracetools_read,
  tracetools_trace,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tracetools_test";
  pkgFinal = final.rolling.tracetools_test;
  src = srcs.ros2_tracing.tracetools_test;

  colconBuildDepends = [
    launch
    launch_ros
    tracetools_launch
    tracetools_read
    tracetools_trace
  ];

  colconRunDepends = [
    launch
    launch_ros
    tracetools_launch
    tracetools_read
    tracetools_trace
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_mypy
    ament_pep257
    ament_xmllint
    python3Packages.pytest
  ];
}
