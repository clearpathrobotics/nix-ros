{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  python3Packages,
  python_qt_binding,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_dotgraph";
  pkgFinal = final.rolling.qt_dotgraph;
  src = srcs.qt_gui_core.qt_dotgraph;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    python3Packages.pydot
    python_qt_binding
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    python3Packages.pygraphviz
  ];
}
