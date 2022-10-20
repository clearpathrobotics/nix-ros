{
  ament_copyright,
  ament_flake8,
  ament_mypy,
  ament_pep257,
  ament_xmllint,
  python3Packages,
  ros2cli,
  tracetools_analysis,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2trace_analysis";
  pkgFinal = final.rolling.ros2trace_analysis;
  src = srcs.tracetools_analysis.ros2trace_analysis;

  colconBuildDepends = [
    ros2cli
    tracetools_analysis
  ];

  colconRunDepends = [
    ros2cli
    tracetools_analysis
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
