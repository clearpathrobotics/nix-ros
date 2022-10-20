{
  ament_index_python,
  python_qt_binding,
  rcl_interfaces,
  rclpy,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_console";
  pkgFinal = final.rolling.rqt_console;
  src = srcs.rqt_console.rqt_console;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    python_qt_binding
    rcl_interfaces
    rclpy
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
