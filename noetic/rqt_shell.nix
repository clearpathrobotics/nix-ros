{
  catkin,
  python3Packages,
  python_qt_binding,
  qt_gui,
  qt_gui_py_common,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_shell";
  pkgFinal = final.noetic.rqt_shell;
  src = srcs.rqt_shell.rqt_shell;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    qt_gui_py_common
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
