{
  ament_copyright,
  ament_flake8,
  ament_mypy,
  ament_pep257,
  ament_xmllint,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tracetools_trace";
  pkgFinal = final.rolling.tracetools_trace;
  src = srcs.ros2_tracing.tracetools_trace;

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
    python3Packages.pytest
  ];
}
