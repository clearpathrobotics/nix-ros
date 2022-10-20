{
  ament_copyright,
  ament_flake8,
  ament_mypy,
  ament_pep257,
  ament_xmllint,
  launch,
  launch_ros,
  python3Packages,
  tracetools_trace,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tracetools_launch";
  pkgFinal = final.rolling.tracetools_launch;
  src = srcs.ros2_tracing.tracetools_launch;

  colconBuildDepends = [
    launch
    launch_ros
    tracetools_trace
  ];

  colconRunDepends = [
    launch
    launch_ros
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
