{
  ament_index_python,
  python_qt_binding,
  qt_dotgraph,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_graph";
  pkgFinal = final.rolling.rqt_graph;
  src = srcs.rqt_graph.rqt_graph;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    python_qt_binding
    qt_dotgraph
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
