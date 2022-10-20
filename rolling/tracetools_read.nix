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
  name = "tracetools_read";
  pkgFinal = final.rolling.tracetools_read;
  src = srcs.ros2_tracing.tracetools_read;

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
