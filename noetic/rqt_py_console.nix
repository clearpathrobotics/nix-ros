{
  catkin,
  python3Packages,
  python_qt_binding,
  qt_gui,
  qt_gui_py_common,
  rospy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_py_console";
  pkgFinal = final.noetic.rqt_py_console;
  src = srcs.rqt_py_console.rqt_py_console;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    qt_gui_py_common
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
