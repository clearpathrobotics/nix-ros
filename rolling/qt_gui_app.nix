{
  ament_cmake,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  qt_gui,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui_app";
  pkgFinal = final.rolling.qt_gui_app;
  src = srcs.qt_gui_core.qt_gui_app;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_index_python
    qt_gui
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
