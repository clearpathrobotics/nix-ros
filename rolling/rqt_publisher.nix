{
  python3Packages,
  python_qt_binding,
  qt_gui_py_common,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_publisher";
  pkgFinal = final.rolling.rqt_publisher;
  src = srcs.rqt_publisher.rqt_publisher;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.catkin-pkg
    python_qt_binding
    qt_gui_py_common
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
