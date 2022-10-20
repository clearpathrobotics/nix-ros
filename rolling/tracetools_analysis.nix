{
  ament_copyright,
  ament_flake8,
  ament_mypy,
  ament_pep257,
  ament_xmllint,
  jupyter,
  python3Packages,
  tracetools_read,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tracetools_analysis";
  pkgFinal = final.rolling.tracetools_analysis;
  src = srcs.tracetools_analysis.tracetools_analysis;

  colconBuildDepends = [
    python3Packages.pandas
    tracetools_read
  ];

  colconRunDepends = [
    jupyter
    python3Packages.pandas
    tracetools_read
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
