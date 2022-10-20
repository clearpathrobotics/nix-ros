{
  catkin,
  python3Packages,
  python_qt_binding,
  qt_gui_py_common,
  qwt_dependency,
  rosgraph,
  rostopic,
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
  pkgFinal = final.noetic.rqt_plot;
  src = srcs.rqt_plot.rqt_plot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.matplotlib
    python3Packages.numpy
    python3Packages.rospkg
    python_qt_binding
    qt_gui_py_common
    qwt_dependency
    rosgraph
    rostopic
    rqt_gui
    rqt_gui_py
    rqt_py_common
    std_msgs
  ];

  colconTestDepends = [
  ];
}
