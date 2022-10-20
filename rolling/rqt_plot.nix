{
  python3Packages,
  python_qt_binding,
  qt_gui_py_common,
  rclpy,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_plot";
  pkgFinal = final.rolling.rqt_plot;
  src = srcs.rqt_plot.rqt_plot;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.catkin-pkg
    python3Packages.matplotlib
    python3Packages.numpy
    python_qt_binding
    qt_gui_py_common
    rclpy
    rqt_gui
    rqt_gui_py
    rqt_py_common
    std_msgs
  ];

  colconTestDepends = [
  ];
}
