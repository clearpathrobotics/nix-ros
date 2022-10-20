{
  python_qt_binding,
  rclpy,
  rqt_gui,
  rqt_gui_py,
  rqt_msg,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_action";
  pkgFinal = final.rolling.rqt_action;
  src = srcs.rqt_action.rqt_action;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python_qt_binding
    rclpy
    rqt_gui
    rqt_gui_py
    rqt_msg
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
