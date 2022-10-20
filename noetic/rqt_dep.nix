{
  catkin,
  python3Packages,
  python_qt_binding,
  qt_dotgraph,
  qt_gui,
  qt_gui_py_common,
  rqt_graph,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_dep";
  pkgFinal = final.noetic.rqt_dep;
  src = srcs.rqt_dep.rqt_dep;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    qt_dotgraph
    qt_gui
    qt_gui_py_common
    rqt_graph
    rqt_gui_py
  ];

  colconTestDepends = [
    python3Packages.mock
  ];
}
