{
  ament_copyright,
  ament_flake8,
  ament_mypy,
  ament_pep257,
  ament_xmllint,
  python3Packages,
  ros2cli,
  tracetools_trace,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2trace";
  pkgFinal = final.rolling.ros2trace;
  src = srcs.ros2_tracing.ros2trace;

  colconBuildDepends = [
    ros2cli
    tracetools_trace
  ];

  colconRunDepends = [
    ros2cli
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
