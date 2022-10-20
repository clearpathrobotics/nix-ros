{
  ament_cmake,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  python_qt_binding,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui_py_common";
  pkgFinal = final.rolling.qt_gui_py_common;
  src = srcs.qt_gui_core.qt_gui_py_common;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_index_python
    python_qt_binding
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
