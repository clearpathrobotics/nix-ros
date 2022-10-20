{
  ament_cmake,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  python3Packages,
  python_qt_binding,
  qt5,
  tango_icons_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui";
  pkgFinal = final.rolling.qt_gui;
  src = srcs.qt_gui_core.qt_gui;

  colconBuildDepends = [
    ament_cmake
    python3Packages.pyqt5
    python3Packages.sip_4
    qt5.qtbase
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.catkin-pkg
    python_qt_binding
    tango_icons_vendor
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
