{
  ament_index_python,
  python_qt_binding,
  qt_gui,
  qt_gui_py_common,
  rclpy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_py_console";
  pkgFinal = final.rolling.rqt_py_console;
  src = srcs.rqt_py_console.rqt_py_console;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    python_qt_binding
    qt_gui
    qt_gui_py_common
    rclpy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
