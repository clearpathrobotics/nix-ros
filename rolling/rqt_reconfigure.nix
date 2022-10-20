{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_xmllint,
  python3Packages,
  python_qt_binding,
  qt_gui_py_common,
  rclpy,
  rqt_console,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_reconfigure";
  pkgFinal = final.rolling.rqt_reconfigure;
  src = srcs.rqt_reconfigure.rqt_reconfigure;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.pyyaml
    python_qt_binding
    qt_gui_py_common
    rclpy
    rqt_console
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_xmllint
  ];
}
