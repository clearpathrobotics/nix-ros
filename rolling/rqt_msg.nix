{
  python3Packages,
  python_qt_binding,
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
  name = "rqt_msg";
  pkgFinal = final.rolling.rqt_msg;
  src = srcs.rqt_msg.rqt_msg;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.catkin-pkg
    python_qt_binding
    rclpy
    rqt_console
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
